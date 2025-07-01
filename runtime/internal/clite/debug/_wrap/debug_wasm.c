#ifdef __EMSCRIPTEN__
//emscripten
#include <emscripten.h>

void llgo_print_stack(int skip) {
  EM_ASM({
    function getStackTrace() {
      var stack;
      try {
        throw new Error();
      } catch (e) {
        stack = e.stack;
      }
      return stack;
    }
    
    var stack = getStackTrace();
    if (stack) {
      var frames = stack.split('\n').slice($0);
      frames.forEach(function(frame) {
        console.log(frame.trim());
      });
    }
  }, skip);
}
#else
// wasi
void llgo_print_stack(int skip){
    
}
#endif
