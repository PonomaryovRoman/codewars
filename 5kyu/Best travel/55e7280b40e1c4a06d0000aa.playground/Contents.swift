import Foundation

// Best travel
// https://www.codewars.com/kata/55e7280b40e1c4a06d0000aa/train/swift

func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
    func combinations(_ n: [Int], _ k: Int) -> [[Int]] {
        if k == 0 { return [n] }
        guard !n.isEmpty, k != 0 else { return [] }
        guard k != 1 else { return n.map { [$0] } }
        
        var arrs: [[Int]] = []
        let tail = Array(n.suffix(from: 1))
        
        arrs += combinations(tail, k - 1).map{[n[0]] + $0}
        arrs += combinations(tail, k)
        return arrs
    }
    let values = combinations(ls, k).map { $0.reduce(0,+) }.sorted().reversed()
    return values.first(where: {($0 <= t )} ) ?? -1 // OK
}


// Solution 2:
/*
func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
    func chooseBestSumAux(_ t: Int, _ k: Int, _ ls: [Int], _ from: Int) -> Int {
        if k == 0 {return t >= 0 ? 0 : t} else { if t < k { return -1 } }
        var best: Int = -1, tmp: Int
        for i in from..<ls.count {
            tmp = chooseBestSumAux(t - ls[i], k - 1, ls, i + 1)
            if tmp >= 0 { best = max(best, ls[i] + tmp) }
        }
        return best
    }
    return chooseBestSumAux(t, k, ls, 0)
}
*/
