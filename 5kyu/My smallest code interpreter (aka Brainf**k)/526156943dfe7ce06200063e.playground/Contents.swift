import Foundation

// My smallest code interpreter (aka Brainf**k)
// https://www.codewars.com/kata/526156943dfe7ce06200063e/train/swift

func brainLuck(_ code: String, input: String) -> String {
    enum Operation {
        case next, pre, increase, decrease, put, get
        case loopStart(to: Int), loopEnd(from: Int)
        init?(rawValue c: Character) {
            switch c {
            case ">": self = .next
            case "<": self = .pre
            case "+": self = .increase
            case "-": self = .decrease
            case ".": self = .put
            case ",": self = .get
            case "[": self = .loopStart(to: 0)
            case "]": self = .loopEnd(from: 0)
            default: return nil
            }
        }
    }
    
    var ops: [Operation] = code.compactMap { Operation(rawValue: $0) }
    var ip: Int = 0
    
    var data: [UInt8] = Array(repeating: 0, count: 1024)
    var dp: Int = 0
    
    var inputStr: [UInt8] = input.unicodeScalars.map{ UInt8($0.value) }
    var output = [UInt8]("".utf8)
    
    var loop: [Int] = []
    
    ops.enumerated().forEach({
        switch $1 {
        case .loopStart:
            loop.append($0)
        case .loopEnd:
            guard let start = loop.popLast() else { fatalError() }
            ops[start] = .loopStart(to: $0)
            ops[$0] = .loopEnd(from: start)
        default: ()
        }
    })
    
    while ip < ops.count {
        let op = ops[ip]
        switch op {
        case .next: dp += 1
        case .pre: dp -= 1
        case .increase: data[dp] = data[dp] &+ 1
        case .decrease: data[dp] = data[dp] &- 1
        case .put: output.append(data[dp])
        case .get:
            if inputStr.count > 0 {
                data[dp] = inputStr.removeFirst()
            }
        case let .loopStart(to): if data[dp] == 0 { ip = to }
        case let .loopEnd(from): ip = from - 1
        }
        ip += 1
    }
    return output.reduce("", {$0 + String(UnicodeScalar($1))}) // OK
}
