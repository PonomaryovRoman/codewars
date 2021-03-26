# [Introduction](https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097/train/swift)

The first century spans from the **year 1** up to and **including the year 100**, The second - from the year 101 up to and including the year 200, etc.

### Task:
Given a year, return the century it is in.

### Input , Output Examples:
```swift
centuryFromYear(1705)  returns (18)
centuryFromYear(1900)  returns (19)
centuryFromYear(1601)  returns (17)
centuryFromYear(2000)  returns (20)
```

### Solution #1:
```swift
func century(_ year: Int) -> Int {
    return Int((Double(year) / 100).rounded(.up))
}
```

### Solution #2:
```swift
func century(_ year: Int) -> Int {
    return (year + 99) / 100
}
```
