# [Stringy Strings](https://www.codewars.com/kata/563b74ddd19a3ad462000054/train/swift)

write me a function ```stringy``` that takes a ```size``` and returns a ```string``` of alternating ```'1s'``` and ```'0s'```.

the string should start with a ```1```.

a string with ```size``` 6 should return :```'101010'```.

with ```size``` 4 should return : ```'1010'```.

with ```size``` 12 should return :```'101010101010'```.

The size will always be positive and will only use whole numbers.

### Solutions:
```swift
func stringy(_ size: Int) -> String {
    var result = [String](), i = 0
    while i < size { i += 1; result.append(.init(i % 2)) }
    return result.joined()
}
```
```swift
func stringy(_ size: Int) -> String {
  return (0..<size).map { $0 % 2 == 0 ? "1" : "0" }.joined()
}
```
```swift
func stringy(_ size: Int) -> String {
    return (1...size).reduce("") {$0 + "\($1 % 2)"}
}
```