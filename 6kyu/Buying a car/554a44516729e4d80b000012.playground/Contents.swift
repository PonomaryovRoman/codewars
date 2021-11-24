import Foundation

// Buying a car
// https://www.codewars.com/kata/554a44516729e4d80b000012/train/swift

func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
    var priceOld = Double(startPriceOld), priceNew = Double(startPriceNew)
    var percent = percentLossByMonth, total = priceOld, months = 0
    while priceNew > total {
        months += 1
        if months % 2 == 0 { percent += 0.5 }
        priceOld *= (100 - percent) / 100
        priceNew *= (100 - percent) / 100
        total = Double(months * savingPerMonth) + priceOld
    }
    return (months, Int(total - priceNew + 0.5))
}
