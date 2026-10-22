#if defined(_MSC_VER)
#define LLGO_NOINLINE __declspec(noinline)
#else
#define LLGO_NOINLINE __attribute__((noinline))
#endif

extern int llgo_lldb_go_callback(int value);
extern void llgo_lldb_go_fault_callback(void);

static int *volatile llgo_lldb_null;

static LLGO_NOINLINE int llgo_lldb_c_inner(int value)
{
    int result = llgo_lldb_go_callback(value + 1);
    return result + 1;
}

LLGO_NOINLINE int llgo_lldb_mixed_call(int value)
{
    int result = llgo_lldb_c_inner(value + 1);
    return result + 1;
}

LLGO_NOINLINE void llgo_lldb_c_fault(void)
{
    *llgo_lldb_null = 42; /* LLDB_BREAK: mixed_go_c_callback_fault */
}

LLGO_NOINLINE void llgo_lldb_mixed_fault_call(void)
{
    llgo_lldb_go_fault_callback();
}
