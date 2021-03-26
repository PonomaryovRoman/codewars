# [Sum Mixed Array](https://www.codewars.com/kata/57eaeb9578748ff92a000009/train/swift)

Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

Return your answer as a number.

### Solution:
```swift
func sumMix(_ arr: [Any]) -> Int {
    arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
}
```
