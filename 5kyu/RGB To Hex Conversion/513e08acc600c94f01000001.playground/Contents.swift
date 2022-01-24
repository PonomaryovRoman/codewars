import Foundation

// RGB To Hex Conversion
// https://www.codewars.com/kata/513e08acc600c94f01000001/train/swift

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    func toHex(_ v: Int) -> String {
        let str = String(format: "%02X", max(0, min(v, 255)))
        return (str.count == 1 ? "0" : "") + str
    }
    return toHex(r) + toHex(g) + toHex(b) // OK
}

// MARK: Solution 2
/*
func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    func norm(_ n: Int) -> Int { min(255, max(0, n)) }
    return String(format: "%02X%02X%02X", norm(r), norm(g), norm(b))
}
*/

// MARK: Solution 3:
/*
func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    return [r,g,b].map { max(min($0,255),0) }.map { String(format: "%02X", $0) }.joined()
}
*/
