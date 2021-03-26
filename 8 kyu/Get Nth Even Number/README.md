# [Get Nth Even Number](https://www.codewars.com/kata/5933a1f8552bc2750a0000ed/train/swift)

#### Return the Nth Even Number
```swift
nthEven(1) // 0, the first even number is 0
nthEven(3) // 4, the 3rd even number is 4 (0, 2, 4)

nthEven(100) // 198
nthEven(1298734) // 2597466
```

### Solution:
```swift
func nthEven(_ n: Int) -> Int {
    return 2 * n - 2
}
```