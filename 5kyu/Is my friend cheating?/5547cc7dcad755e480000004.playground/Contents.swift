import Foundation

// Is my friend cheating?
// https://www.codewars.com/kata/5547cc7dcad755e480000004/train/swift

func removNb(_ n: Int) -> [(Int,Int)] {
    var sum = (n+1)*n/2, res = [(Int,Int)]()
    for i in 1..<n {
        let a = (sum - i)/(i+1)
        if (a*i == sum - a - i && a <= n ) {
            res.append((i, a))
        }
    }
    return res // OK
}

// Solution 2
/*
func removNb(_ n: Int) -> [(Int,Int)] {
    let sum: Int = (n*n+n)/2
    var results: [(Int, Int)] = []
    for a in sum/n...n{
        for b in (sum-a-n)/(a)...sum/a {
            if (sum-a-b) == (a*b){
                results.append((a,b))
                break
            }
        }
    }
    return results
}
*/
