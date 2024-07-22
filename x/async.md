# Async Design

## Async functions in different languages

### JavaScript

- [Async/Await](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)

Prototype:

```javascript
async function name(param0) {
  statements;
}
async function name(param0, param1) {
  statements;
}
async function name(param0, param1, /* …, */ paramN) {
  statements;
}
```

Example:

```typescript
// async function
function resolveAfter2Seconds(): Promise<string> {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve("resolved");
    }, 2000);
  });
}

// async function call
async function asyncCall(): Promise<void> {
  const result = await resolveAfter2Seconds();
  console.log(result);
}

// returns a promise directly
function asyncCall2(): Promise<void> {
  return resolveAfter2Seconds();
}

// don't wait for the promise to resolve
function asyncCall3() {
  resolveAfter2Seconds();
}
```

### Python

- [async def](https://docs.python.org/3/library/asyncio-task.html#coroutines)

Prototype:

```python
async def name(param0):
  statements
```

Example:

```python
import asyncio

async def resolve_after_1_second():
    await asyncio.sleep(1)
    print("resolved")

async def async_call():
    await resolve_after_1_second()

def async_call2():
    return resolve_after_1_second()

def async_call3():
    asyncio.create_task(resolve_after_1_second())

async def main():
    print("Starting AsyncCall")
    await async_call()

    print("Starting AsyncCall2")
    await async_call2()

    print("Starting AsyncCall3")
    async_call3()

    # Wait for AsyncCall3 to complete
    await asyncio.sleep(1)

    print("Main function completed")

# 运行主异步函数
if __name__ == "__main__":
    asyncio.run(main())
```

### Rust

- [async fn](https://doc.rust-lang.org/std/keyword.async.html)

Prototype:

```rust
async fn name(param0: Type) -> ReturnType {
  statements
}
```

Example:

```rust
use std::time::Duration;
use tokio::time::sleep;
use std::future::Future;

async fn resolve_after_1_seconds() -> String {
    sleep(Duration::from_secs(1)).await;
    "resolved".to_string()
}

async fn async_call() {
    let result = resolve_after_1_seconds().await;
    println!("async_call: {}", result);
}

fn async_call2() -> impl Future<Output = String> {
    resolve_after_1_seconds()
}

fn async_call3() {
    tokio::spawn(async {
        let result = resolve_after_1_seconds().await;
        println!("async_call3: {}", result);
    });
}

#[tokio::main]
async fn main() {
    async_call().await;

    let result = async_call2().await;
    println!("async_call2: {}", result);

    async_call3();

    // wait for async_call3 to complete
    sleep(Duration::from_secs(2)).await;
}
```

### C#

- [async](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/async/)

Prototype:

```csharp
async Task<ReturnType> NameAsync(Type param0)
{
  statements;
}
```

Example:

```csharp
using System;
using System.Threading.Tasks;

public class Program
{
    static async Task ResolveAfter1Second()
    {
        await Task.Delay(1000);
        Console.WriteLine("resolved");
    }

    static async Task AsyncCall()
    {
        await ResolveAfter1Second();
    }

    static Task AsyncCall2()
    {
        return ResolveAfter1Second();
    }

    static void AsyncCall3()
    {
        Task.Run(async () => await ResolveAfter1Second());
    }

    // 修改 Main 方法为 public
    public static void Main(string[] args)
    {
        MainAsync().GetAwaiter().GetResult();
    }

    static async Task MainAsync()
    {
        Console.WriteLine("Starting AsyncCall");
        await AsyncCall();

        Console.WriteLine("Starting AsyncCall2");
        await AsyncCall2();

        Console.WriteLine("Starting AsyncCall3");
        AsyncCall3();

        // Wait for AsyncCall3 to complete
        await Task.Delay(1000);

        Console.WriteLine("Main method completed");
    }
}
```

### C++ 20 Coroutines

- [co_await](https://en.cppreference.com/w/cpp/language/coroutines)

Prototype:

```cpp
TaskReturnType NameAsync(Type param0)
{
  co_return co_await expression;
}
```

Example:

```cpp
#include <iostream>
#include <chrono>
#include <thread>
#include <coroutine>
#include <future>

struct Task {
    struct promise_type {
        std::promise<void> p;
        Task get_return_object() { return {p.get_future()}; }
        std::suspend_never initial_suspend() { return {}; }
        std::suspend_never final_suspend() noexcept { return {}; }
        void return_void() { p.set_value(); }
        void unhandled_exception() { p.set_exception(std::current_exception()); }
    };

    std::future<void> fut;
    Task(std::future<void> f) : fut(std::move(f)) {}

    bool await_ready() { return fut.wait_for(std::chrono::seconds(0)) == std::future_status::ready; }
    void await_suspend(std::coroutine_handle<> h) {
        std::thread([this, h] {
            fut.wait();
            h.resume();
        }).detach();
    }
    void await_resume() { fut.get(); }
};

Task resolve_after_1_second() {
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << "resolved" << std::endl;
    co_return;
}

Task async_call() {
    co_await resolve_after_1_second();
}

Task async_call2() {
    co_return co_await resolve_after_1_second();
}

void async_call3() {
    std::thread([] {
        resolve_after_1_second();
    }).detach();
}

Task main_coroutine() {
    std::cout << "Starting AsyncCall" << std::endl;
    co_await async_call();

    std::cout << "Starting AsyncCall2" << std::endl;
    co_await async_call2();

    std::cout << "Starting AsyncCall3" << std::endl;
    async_call3();

    // Wait for AsyncCall3 to complete
    std::this_thread::sleep_for(std::chrono::seconds(1));

    std::cout << "Main function completed" << std::endl;
}

int main() {
    main_coroutine().fut.wait();
    return 0;
}
```
