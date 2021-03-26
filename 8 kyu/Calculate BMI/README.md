# [Calculate BMI](https://www.codewars.com/kata/57a429e253ba3381850000fb/train/swift)

Write function bmi that calculates body mass index (bmi = weight / height2).
```swift
if bmi <= 18.5 return "Underweight"
if bmi <= 25.0 return "Normal"
if bmi <= 30.0 return "Overweight"
if bmi > 30 return "Obese"
```

### Solution:
```swift
func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight)/pow(height, 2)
    return bmi <= 18.5 ? "Underweight" : (bmi <= 25.0 ? "Normal" : (bmi <= 30.0 ? "Overweight" : "Obese"))
}
```