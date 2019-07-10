// John Loehr HW1
// Write a function that takes in two parameters. The first one is an array of Ints, the second parameter is a closure that takes two parameters and returns a Bool. The parameters for the closure are both Ints. The function will return a sorted array based on the closure

import UIKit
// declare arrays for testing purposes
let testArray: [Int] = [2, 4, 8, 1, 11, 2, 15, 12, 6]
var arrIndex = testArray.count - 1 // should be 8

// function taking two ints as parameters and returns a bool
func arrCompare(array: [Int], closure: (Int, Int) -> Bool) -> [Int] {
    var copy = array
    // swift implementation of bubbleSort
    for _ in 0...arrIndex {
        for j in 0...arrIndex-1 where !closure(copy[j], copy[j+1]){
            let temp = copy[j]
            copy[j] = copy[j+1]
            copy[j+1] = temp
        }
    }
    return copy
}
// print final result
print(arrCompare(array: testArray) { (currentNumber, nextNumber) -> Bool in
    return currentNumber <= nextNumber
})




