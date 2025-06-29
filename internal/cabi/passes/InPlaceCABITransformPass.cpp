#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Type.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

// Command line option for the large type size threshold
static cl::opt<unsigned>
    LargeTypeSizeThreshold("large-type-threshold",
                           cl::desc("Size threshold in bytes for large type "
                                    "CABI transformation (default: 16)"),
                           cl::init(16));

namespace {

struct InPlaceCABITransformPass
    : public PassInfoMixin<InPlaceCABITransformPass> {
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
    bool Changed = false;
    const DataLayout &DL = M.getDataLayout();

    // Collect functions that need transformation
    std::vector<Function *> FunctionsToTransform;
    for (Function &F : M) {
      if (!F.isDeclaration() && needsTransformation(F, DL)) {
        FunctionsToTransform.push_back(&F);
      }
    }

    // For debugging: just report functions that need transformation
    for (Function *F : FunctionsToTransform) {
      errs() << "Function needs transformation: " << F->getName() << "\n";
      Type *RetTy = F->getReturnType();
      if (!RetTy->isVoidTy() && isLargeType(RetTy, DL)) {
        errs() << "  Large return type: " << *RetTy << "\n";
      }
      for (Argument &Arg : F->args()) {
        if (isLargeType(Arg.getType(), DL)) {
          errs() << "  Large parameter: " << *Arg.getType() << "\n";
        }
      }
    }

    // Skip actual transformation for now
    // TODO: Re-enable after debugging
    // for (Function *F : FunctionsToTransform) {
    //   if (transformFunctionInPlace(*F, M)) {
    //     Changed = true;
    //   }
    // }

    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
  }

private:
  // Check if a type is "large" (> threshold bytes)
  bool isLargeType(Type *T, const DataLayout &DL) {
    if (!T)
      return false;
    uint64_t Size = DL.getTypeAllocSize(T);
    return Size > LargeTypeSizeThreshold;
  }

  // Check if function needs CABI transformation
  bool needsTransformation(Function &F, const DataLayout &DL) {
    // Check return type
    Type *RetTy = F.getReturnType();
    if (!RetTy->isVoidTy() && isLargeType(RetTy, DL)) {
      return true;
    }

    // Check parameter types
    for (Argument &Arg : F.args()) {
      if (isLargeType(Arg.getType(), DL)) {
        return true;
      }
    }

    return false;
  }

  // Transform a function in-place to be CABI compatible
  bool transformFunctionInPlace(Function &F, Module &M) {
    const DataLayout &DL = M.getDataLayout();
    LLVMContext &Ctx = M.getContext();

    errs() << "Transforming function: " << F.getName() << "\n";

    // Analyze what transformations are needed
    Type *RetTy = F.getReturnType();
    bool HasLargeReturn = !RetTy->isVoidTy() && isLargeType(RetTy, DL);

    std::vector<bool> ParamIsLarge;
    for (Argument &Arg : F.args()) {
      ParamIsLarge.push_back(isLargeType(Arg.getType(), DL));
    }

    if (HasLargeReturn) {
      errs() << "  Converting return type to sret\n";
    }

    for (size_t i = 0; i < ParamIsLarge.size(); ++i) {
      if (ParamIsLarge[i]) {
        errs() << "  Converting parameter " << i << " to pointer\n";
      }
    }

    // Build new function type
    std::vector<Type *> NewParamTypes;

    // Add sret parameter if needed
    if (HasLargeReturn) {
      NewParamTypes.push_back(PointerType::get(RetTy, 0));
    }

    // Add regular parameters (convert large ones to pointers)
    for (size_t i = 0; i < ParamIsLarge.size(); ++i) {
      Argument &Arg = *std::next(F.arg_begin(), i);
      if (ParamIsLarge[i]) {
        NewParamTypes.push_back(PointerType::get(Arg.getType(), 0));
      } else {
        NewParamTypes.push_back(Arg.getType());
      }
    }

    // Create new function type
    Type *NewRetTy = HasLargeReturn ? Type::getVoidTy(Ctx) : RetTy;
    FunctionType *NewFuncType =
        FunctionType::get(NewRetTy, NewParamTypes, F.isVarArg());

    // Create new function with same name
    Function *NewF = Function::Create(NewFuncType, F.getLinkage(),
                                      F.getName() + "_temp", &M);
    NewF->copyAttributesFrom(&F);

    // Set sret attribute if needed
    if (HasLargeReturn) {
      NewF->addParamAttr(0, Attribute::get(Ctx, Attribute::StructRet, RetTy));
      NewF->addParamAttr(0, Attribute::NoAlias);
    }

    // Move basic blocks from old function to new function
    std::vector<BasicBlock *> BlocksToMove;
    for (BasicBlock &BB : F) {
      BlocksToMove.push_back(&BB);
    }

    for (BasicBlock *BB : BlocksToMove) {
      BB->removeFromParent();
      BB->insertInto(NewF);
    }

    // Update argument mapping
    auto NewArgIt = NewF->arg_begin();
    auto OldArgIt = F.arg_begin();

    Value *SRetPtr = nullptr;
    if (HasLargeReturn) {
      SRetPtr = &*NewArgIt++;
    }

    // Map arguments
    IRBuilder<> EntryBuilder(&NewF->getEntryBlock(),
                             NewF->getEntryBlock().begin());
    for (size_t i = 0; i < ParamIsLarge.size(); ++i, ++OldArgIt, ++NewArgIt) {
      if (ParamIsLarge[i]) {
        // For large parameters, create a single load at function entry
        Value *LoadedVal =
            EntryBuilder.CreateLoad(OldArgIt->getType(), &*NewArgIt);
        OldArgIt->replaceAllUsesWith(LoadedVal);
      } else {
        OldArgIt->replaceAllUsesWith(&*NewArgIt);
      }
    }

    // Update return instructions
    if (HasLargeReturn) {
      for (BasicBlock &BB : *NewF) {
        for (Instruction &I : BB) {
          if (auto *Ret = dyn_cast<ReturnInst>(&I)) {
            if (Ret->getReturnValue()) {
              IRBuilder<> Builder(Ret);
              Builder.CreateStore(Ret->getReturnValue(), SRetPtr);
              Instruction *NewRet = Builder.CreateRetVoid();
              Ret->replaceAllUsesWith(NewRet);
              Ret->eraseFromParent();
              break;
            }
          }
        }
      }
    }

    // Update all call sites
    std::vector<CallInst *> CallsToUpdate;
    for (User *U : F.users()) {
      if (auto *Call = dyn_cast<CallInst>(U)) {
        CallsToUpdate.push_back(Call);
      }
    }

    for (CallInst *OldCall : CallsToUpdate) {
      IRBuilder<> Builder(OldCall);
      std::vector<Value *> NewArgs;

      Value *SRetAlloca = nullptr;
      if (HasLargeReturn) {
        SRetAlloca = Builder.CreateAlloca(RetTy);
        NewArgs.push_back(SRetAlloca);
      }

      // Transform call arguments
      for (size_t i = 0; i < OldCall->arg_size(); ++i) {
        Value *Arg = OldCall->getArgOperand(i);
        if (ParamIsLarge[i]) {
          Value *Alloca = Builder.CreateAlloca(Arg->getType());
          Builder.CreateStore(Arg, Alloca);
          NewArgs.push_back(Alloca);
        } else {
          NewArgs.push_back(Arg);
        }
      }

      CallInst *NewCall = Builder.CreateCall(NewF, NewArgs);

      if (HasLargeReturn) {
        Value *RetVal = Builder.CreateLoad(RetTy, SRetAlloca);
        OldCall->replaceAllUsesWith(RetVal);
      } else if (!OldCall->getType()->isVoidTy()) {
        OldCall->replaceAllUsesWith(NewCall);
      }

      OldCall->eraseFromParent();
    }

    // For now, skip updating non-call references to avoid crashes
    // TODO: Implement proper handling of function pointer references
    errs() << "  Skipping non-call reference updates for safety\n";

    // Replace old function with new function (same name)
    std::string OriginalName = F.getName().str();
    F.eraseFromParent();
    NewF->setName(OriginalName);

    errs() << "  Function transformation completed\n";
    return true;
  }
};

} // end anonymous namespace

// Register the pass
llvm::PassPluginLibraryInfo getInPlaceCABITransformPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "InPlaceCABITransformPass",
          LLVM_VERSION_STRING, [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "inplace-cabi-transform") {
                    MPM.addPass(InPlaceCABITransformPass{});
                    return true;
                  }
                  return false;
                });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getInPlaceCABITransformPassPluginInfo();
}