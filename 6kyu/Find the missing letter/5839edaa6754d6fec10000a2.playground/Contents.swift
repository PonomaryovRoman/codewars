import Foundation

// Find the missing letter
// https://www.codewars.com/kata/5839edaa6754d6fec10000a2/train/swift

func findMissingLetter(_ chArr: [Character]) -> Character {
    for ch in chArr {
        let next = Character(UnicodeScalar(ch.asciiValue! + 1))
        if !chArr.contains(next) { return next }
    }
    return Character("") // OK
}
