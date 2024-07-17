#include "../../../_wrap/neco.h"
#include <stdio.h>
#include <unistd.h>

void coroutine(int argc, void *argv[]) {
  // Yield each int to the caller, one at a time.
  for (int i = 0; i < 10; i++) {
    neco_gen_yield(&i);
  }
}

static int __neco_main() {

  // Create a new generator coroutine that is used to send ints.
  neco_gen *gen;
  neco_gen_start(&gen, sizeof(int), coroutine, 0);

  // Iterate over each int until the generator is closed.
  int i;
  while (neco_gen_next(gen, &i) != NECO_CLOSED) {
    printf("%d\n", i);
  }

  // This coroutine no longer needs the generator.
  neco_gen_release(gen);
  return 0;
}
static void _neco_main() { __neco_exit_prog(__neco_main()); }
void run_main() {
  neco_env_setpaniconerror(true);
  neco_env_setcanceltype(NECO_CANCEL_ASYNC);
  int ret = neco_start(_neco_main, 0);
  fprintf(stderr, "neco_start: %s (code %d)\n", neco_strerror(ret), ret);
};
