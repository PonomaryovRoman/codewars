import Foundation

// Grasshopper - Grade book
// https://www.codewars.com/kata/55cbd4ba903825f7970000f5/train/swift

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    let score = (s1 + s2 + s3) / 3
    var result: String!
    switch score {
    case 0..<60:    result = "F"
    case 60..<70:   result = "D"
    case 70..<80:   result = "C"
    case 80..<90:   result = "B"
    case 90...100:  result = "A"
    default:        fatalError() // BOOM!
    }
    return result
}
