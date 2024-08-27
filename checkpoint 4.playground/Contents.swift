import Cocoa

enum squareRootError: Error {
    case OutOfBouds
    case noRoot
}
func integerSquareRoot( of number: Int) throws -> Int {
    guard number >= 1 && number <= 10000 else {
        throw squareRootError.OutOfBouds
    }
    var low = 1
    var high = number
    // I had to look up how to make this work but I know how it does (:
    while low <= high {
        let mid = (low+high)/2
        let midSquared = mid * mid
        if midSquared == number {
            return mid
        } else if midSquared < number {
            low = mid+1
        } else {
            high = mid - 1
        }
    }
    throw squareRootError.noRoot
}
let Test = 144
// ergh
do {
    let result = try integerSquareRoot(of: Test)
    print("The square root of \(Test) is \(result)")
} catch squareRootError.noRoot {
    print("no square root")
} catch squareRootError.OutOfBouds{
    print("out of bounds")
}
