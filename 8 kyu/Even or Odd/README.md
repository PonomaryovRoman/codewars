## [Even or Odd](https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/swift)

Create a function (or write a script in Shell) that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

### Solution:
```swift
func evenOrOdd(_ number:Int) -> String {
    guard number % 2 == 0 else { return "Odd" }
    return "Even"
}
```
