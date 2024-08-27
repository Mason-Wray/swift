import Cocoa
let colors = ["green", "yellow", "blue", "blue", "orange", "green", "red"]
let totalAmount = colors.count

let uniqueItems = Set(colors)
let uniquetotal = uniqueItems.count

print("total = \(totalAmount) ")
print("unique total = \(uniquetotal) ")
