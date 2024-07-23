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

async function asyncCall2(): Promise<string> {
  const result = await resolveAfter1Second();
  return `AsyncCall2: ${result}`;
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

async def async_call2() -> str:
    result = await resolve_after_1_second()
    return f"AsyncCall2: {result}"

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
use tokio::time::{sleep, Duration};

async fn resolve_after_1_second() -> String {
    sleep(Duration::from_secs(1)).await;
    "Resolved after 1 second".to_string()
}

async fn async_call() -> String {
    let result = resolve_after_1_second().await;
    format!("AsyncCall: {}", result)
}

async fn async_call2() -> String {
    let result = resolve_after_1_second().await;
    format!("AsyncCall2: {}", result)
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
    sleep(Duration::from_secs(1)).await;

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

    static async Task<string> AsyncCall2()
    {
        string result = await ResolveAfter1Second();
        return $"AsyncCall2: {result}";
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
    auto result = co_await resolveAfter1Second();
    co_return "AsyncCall2: " + result;
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
