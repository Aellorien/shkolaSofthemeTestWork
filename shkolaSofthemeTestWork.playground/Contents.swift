//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// At first we need to find the upper limit of our case. For this we need to find y(quantity of digits),
// where y * 9^5 < 10^y. If we found such y, we can found upper limit, which is y * 9^5)
let x = pow(9, 5)
var y = 1
for y in 1...10 {
    var z = pow(10, y)
    var w = x * Decimal(y)
    if z > w {
        print(w)
        print(y)
        break
    }
}
// So, the upper limit of our case is 354294.
// Let's found sum of all the numbers which can be written as sum of its digits in fifth pow each.
var sumOfInterestingNums = 0

for  i in 2...354294 {
    var sumOfDigitsInFivePow = 0
    var digit = i
    
    while (digit > 0) {
        var recidue = digit % 10
        digit /= 10
        var digitInFivePow = pow(Double(recidue), 5)
        sumOfDigitsInFivePow += Int(digitInFivePow)
    }
    
    if (sumOfDigitsInFivePow == i) {
        sumOfInterestingNums += i
        print(i)
    }
}
print(sumOfInterestingNums)