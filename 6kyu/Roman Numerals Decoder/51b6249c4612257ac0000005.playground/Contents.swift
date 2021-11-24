import Foundation

// Roman Numerals Decoder
// https://www.codewars.com/kata/51b6249c4612257ac0000005/train/swift

func solution(_ string: String) -> Int {
    let sym: [Character:Int] = ["I": 1,
                                "V": 5,
                                "X": 10,
                                "L": 50,
                                "C": 100,
                                "D": 500,
                                "M": 1000]
    var val = 0
    let transform: (Character) -> Int = {
        let res = sym[$0]!
        if res > val { val = res }
        return res < val ? -res : res
    }
    return string.reversed().map(transform).reduce(0,+) // OK
}
