#include <reent.h>

extern struct _reent _impure_data;
extern void __sinit(struct _reent *);

// Ensure reent/stdio state is initialized even when semihosting is enabled.
// newlib omits __getreent in semihosting builds, so we provide a strong one
// and also set _impure_ptr upfront.
static void __attribute__((constructor)) __llgo_esp32_reent_init(void) {
	_impure_ptr = &_impure_data;
	__sinit(_impure_ptr);
}

struct _reent *__getreent(void) {
	if (_impure_ptr == NULL) {
		_impure_ptr = &_impure_data;
		__sinit(_impure_ptr);
	}
	return _impure_ptr;
}
