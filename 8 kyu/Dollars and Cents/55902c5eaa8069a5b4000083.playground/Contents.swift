import Foundation

// Dollars and Cents
// https://www.codewars.com/kata/55902c5eaa8069a5b4000083/train/swift

func formatMoney(_ val: Double) -> String {
    return .init(format: "$%.2f", val) // :)
}

// MARK: - Solution 2 -

/*
func formatMoney(_ val: Double) -> String {
    let nf = NumberFormatter()
    nf.numberStyle = .currency
    nf.locale = .init(identifier: "en_US")
    nf.currencyGroupingSeparator = ""
    nf.minimumIntegerDigits = 1
    return nf.string(from: NSNumber(value: val)) ?? ""
}
*/
