# Async I/O Design

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
async function resolveAfter1Second(): Promise<string> {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve("Resolved after 1 second");
    }, 1000);
  });
}

async function asyncCall(): Promise<string> {
  const result = await resolveAfter1Second();
  return `AsyncCall: ${result}`;
}

function asyncCall2(): Promise<string> {
  return resolveAfter1Second();
}

function asyncCall3(): void {
  resolveAfter1Second().then((result) => {
    console.log(`AsyncCall3: ${result}`);
  });
}

async function main() {
  console.log("Starting AsyncCall");
  const result1 = await asyncCall();
  console.log(result1);

  console.log("Starting AsyncCall2");
  const result2 = await asyncCall2();
  console.log(result2);

  console.log("Starting AsyncCall3");
  asyncCall3();

  // Wait for AsyncCall3 to complete
  await new Promise((resolve) => setTimeout(resolve, 1000));

  console.log("Main function completed");
}

main().catch(console.error);
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

async def resolve_after_1_second() -> str:
    await asyncio.sleep(1)
    return "Resolved after 1 second"

async def async_call() -> str:
    result = await resolve_after_1_second()
    return f"AsyncCall: {result}"

def async_call2() -> asyncio.Task:
    return resolve_after_1_second()

def async_call3() -> None:
    asyncio.create_task(print_after_1_second())

async def print_after_1_second() -> None:
    result = await resolve_after_1_second()
    print(f"AsyncCall3: {result}")

async def main():
    print("Starting AsyncCall")
    result1 = await async_call()
    print(result1)

    print("Starting AsyncCall2")
    result2 = await async_call2()
    print(result2)

    print("Starting AsyncCall3")
    async_call3()

    # Wait for AsyncCall3 to complete
    await asyncio.sleep(1)

    print("Main function completed")

# Run the main coroutine
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

async fn resolve_after_1_second() -> String {
    sleep(Duration::from_secs(1)).await;
    "Resolved after 1 second".to_string()
}

async fn async_call() -> String {
    let result = resolve_after_1_second().await;
    format!("AsyncCall: {}", result)
}

fn async_call2() -> impl Future<Output = String> {
    resolve_after_1_second()
}

fn async_call3() {
    tokio::spawn(async {
        let result = resolve_after_1_second().await;
        println!("AsyncCall3: {}", result);
    });
}

#[tokio::main]
async fn main() {
    println!("Starting AsyncCall");
    let result1 = async_call().await;
    println!("{}", result1);

    println!("Starting AsyncCall2");
    let result2 = async_call2().await;
    println!("{}", result2);

    println!("Starting AsyncCall3");
    async_call3();

    // Wait for AsyncCall3 to complete
    sleep(Duration::from_secs(2)).await;

    println!("Main function completed");
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

class Program
{
    static async Task<string> ResolveAfter1Second()
    {
        await Task.Delay(1000);
        return "Resolved after 1 second";
    }

    static async Task<string> AsyncCall()
    {
        string result = await ResolveAfter1Second();
        return $"AsyncCall: {result}";
    }

    static Task<string> AsyncCall2()
    {
        return ResolveAfter1Second();
    }

    static void AsyncCall3()
    {
        _ = Task.Run(async () =>
        {
            string result = await ResolveAfter1Second();
            Console.WriteLine($"AsyncCall3: {result}");
        });
    }

    static async Task Main()
    {
        Console.WriteLine("Starting AsyncCall");
        string result1 = await AsyncCall();
        Console.WriteLine(result1);

        Console.WriteLine("Starting AsyncCall2");
        string result2 = await AsyncCall2();
        Console.WriteLine(result2);

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
#include <cppcoro/task.hpp>
#include <cppcoro/sync_wait.hpp>
#include <cppcoro/when_all.hpp>
#include <chrono>
#include <iostream>
#include <thread>

cppcoro::task<std::string> resolveAfter1Second() {
    co_await std::chrono::seconds(1);
    co_return "Resolved after 1 second";
}

cppcoro::task<std::string> asyncCall() {
    auto result = co_await resolveAfter1Second();
    co_return "AsyncCall: " + result;
}

cppcoro::task<std::string> asyncCall2() {
    return resolveAfter1Second();
}

cppcoro::task<void> asyncCall3() {
    auto result = co_await resolveAfter1Second();
    std::cout << "AsyncCall3: " << result << std::endl;
}

cppcoro::task<void> main() {
    std::cout << "Starting AsyncCall" << std::endl;
    auto result1 = co_await asyncCall();
    std::cout << result1 << std::endl;

    std::cout << "Starting AsyncCall2" << std::endl;
    auto result2 = co_await asyncCall2();
    std::cout << result2 << std::endl;

    std::cout << "Starting AsyncCall3" << std::endl;
    auto asyncCall3Task = asyncCall3();

    // Wait for AsyncCall3 to complete
    co_await asyncCall3Task;

    std::cout << "Main function completed" << std::endl;
}

int main() {
    try {
        cppcoro::sync_wait(::main());
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }
    return 0;
}
```

## Common concepts

### Promise, Future, Task, and Coroutine

- **Promise**: An object that represents the eventual completion (or failure) of an asynchronous operation and its resulting value. It is used to produce a value that will be consumed by a `Future`.

- **Future**: An object that represents the result of an asynchronous operation. It is used to obtain the value produced by a `Promise`.

- **Task**: A unit of work that can be scheduled and executed asynchronously. It is a higher-level abstraction that combines a `Promise` and a `Future`.

- **Coroutine**: A special type of function that can suspend its execution and return control to the caller without losing its state. It can be resumed later, allowing for asynchronous programming.

### `async`, `await` and similar keywords

- **`async`**: A keyword used to define a function that returns a `Promise` or `Task`. It allows the function to pause its execution and resume later.

- **`await`**: A keyword used to pause the execution of an `async` function until a `Promise` or `Task` is resolved. It unwraps the value of the `Promise` or `Task` and allows the function to continue.

- **`co_return`**: A keyword used in C++ coroutines to return a value from a coroutine. It is similar to `return` but is used in coroutines to indicate that the coroutine has completed. It's similar to `return` in `async` functions in other languages that boxes the value into a `Promise` or `Task`.

`async/await` and similar constructs provide a more readable and synchronous-like way of writing asynchronous code, it hides the type of `Promise`/`Future`/`Task` from the user and allows them to focus on the logic of the code.

### Executing Multiple Async Operations Concurrently

To run multiple promises concurrently, JavaScript provides `Promise.all`, `Promise.allSettled` and `Promise.any`, Python provides `asyncio.gather`, Rust provides `tokio::try_join`, C# provides `Task.WhenAll`, and C++ provides `cppcoro::when_all`.

In some situations, you may want to get the first result of multiple async operations. JavaScript provides `Promise.race` to get the first result of multiple promises. Python provides `asyncio.wait` to get the first result of multiple coroutines. Rust provides `tokio::select!` to get the first result of multiple futures. C# provides `Task.WhenAny` to get the first result of multiple tasks. C++ provides `cppcoro::when_any` to get the first result of multiple tasks. Those functions are very simular to `select` in Go.

### Error Handling

`await` commonly unwraps the value of a `Promise` or `Task`, but it also propagates errors. If the `Promise` or `Task` is rejected or throws an error, the error will be thrown in the `async` function by the `await` keyword. You can use `try/catch` blocks to handle errors in `async` functions.

## Common patterns

- `async` keyword hides the types of `Promise`/`Future`/`Task` in the function signature in Python and Rust, but not in JavaScript, C#, and C++.
- `await` keyword unwraps the value of a `Promise`/`Future`/`Task`.
- `return` keyword boxes the value into a `Promise`/`Future`/`Task` if it's not already.

## Design considerations in LLGo

- Don't introduce `async`/`await` keywords to compatible with Go compiler (just compiling)
- For performance reason don't implement async functions with goroutines
- Avoid implementing `Promise` by using `chan` to avoid blocking the thread, but it can be wrapped as a `chan` to make it compatible `select` statement

## Design

Introduce `Promise` type to represent an asynchronous operation and its resulting value. `Promise` can be resolved with a value with an error. `Promise` can be awaited to get the value and error.

`Promise` just a type indicating the asynchronous operation, it can't be created and assigned directly. It be replaced to `PromiseImpl` by the LLGo compiler.

```go
// Some native async functions
func timeoutAsync(d time.Duration, cb func()) {
  go func() {
    time.Sleep(d)
    cb()
  }()
}

// Wrap callback-based async function into Promise
func resolveAfter1Second() (resolve Promise[string]) {
  timeoutAsync(1 * time.Second, func() {
    resolve("Resolved after 1 second", nil)
  })
}

// Compiled to:
func resolveAfter1Second() (resolve PromiseImpl[string]) {
  promise := io.NewPromiseImpl[string](resolve func(value string, err error) {
    resolve: func(value string, err error) {
      for true {
        switch (promise.prev = promise.next) {
          case 0:
            timeoutAsync(1 * time.Second, func() {
              resolve("Resolved after 1 second", nil)
            })
        }
      }
    },
  }
  return promise
}

func asyncCall() (resolve Promise[string]) {
  str, err := resolveAfter1Second().Await()
  resolve("AsyncCall: " + str, err)
}

// Compiled to:
func asyncCall() (resolve PromiseImpl[string]) {
  promise := io.NewPromiseImpl[string](resolve func(value string, err error) {
    for true {
      switch (promise.prev = promise.next) {
        case 0:
          resolveAfter1Second()
          return
        case 1:
          str, err := promise.value, promise.err
          resolve("AsyncCall: " + str, err)
          return
      }
    }
  })
  return promise
}

// Directly return Promise
func asyncCall2() Promise[string] {
  return resolveAfter1Second()
}

// Compiled to:
func asyncCall2() PromiseImpl[string] {
  return resolveAfter1Second()
}

// Don't wait for Promise to complete
func asyncCall3() {
  resolveAfter1Second().Then(func(result string) {
    fmt.Println("AsyncCall3: " + result)
  })
}

func asyncMain() {
  fmt.Println("Starting AsyncCall")
  result1 := asyncCall().Await()
  fmt.Println(result1)

  fmt.Println("Starting AsyncCall2")
  result2 := asyncCall2().Await()
  fmt.Println(result2)

  fmt.Println("Starting AsyncCall3")
  asyncCall3()

  // Wait for AsyncCall3 to complete
  time.Sleep(2 * time.Second)

  fmt.Println("Main function completed")
}
```
