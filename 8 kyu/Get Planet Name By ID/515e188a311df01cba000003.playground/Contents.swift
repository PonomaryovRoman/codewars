import Foundation

// Get Planet Name By ID
// https://www.codewars.com/kata/515e188a311df01cba000003/train/swift

func getPlanetName(_ id: Int) -> String {
    var name: String
    switch id {
    case 1:
        name = "Mercury"
    case 2:
        name = "Venus"
    case 3:
        name = "Earth"
    case 4:
        name = "Mars"
    case 5:
        name = "Jupiter"
    case 6:
        name = "Saturn"
    case 7:
        name = "Uranus"
    case 8:
        name = "Neptune"
    default:
        name = ""
        return name
    }
    return name // <- Boom!
}

//MARK: - Solution 2 -

//func getPlanetName(_ id: Int) -> String {
//    switch id {
//    case 1: return "Mercury"
//    case 2: return "Venus"
//    case 3: return "Earth"
//    case 4: return "Mars"
//    case 5: return "Jupiter"
//    case 6: return "Saturn"
//    case 7: return "Uranus"
//    case 8: return "Neptune"
//    default: return ""
//    }
//}

//MARK: - Tests -

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.006) seconds

class SampleTests: XCTestCase {
    func test() {
        XCTAssertEqual(getPlanetName(2),"Venus")
        XCTAssertEqual(getPlanetName(5),"Jupiter")
        XCTAssertEqual(getPlanetName(3),"Earth")
    }
}

SampleTests.defaultTestSuite.run()
