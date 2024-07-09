#include <stdio.h>
#include <fmt/core.h>




extern "C" void Cprint(char* ss) {
        fmt::print(ss);
}

// interface ICallback {
// 	virtual int val() = 0;
// 	virtual double calc(double v) = 0;
// };

// extern "C" void f(ICallback* cb) {
// 	printf("val: %d\ncalc(2): %lf\n", cb->val(), cb->calc(2));
// }

// void g(ICallback* cb) {// 在终端中使用以下命令编译代码，确保启用C++11或更高版本的支持
// 在终端中使用以下命令编译代码，确保启用C++11或更高版本的支持

// 	f(cb);
// }
