//: Playground - noun: a place where people can play

import UIKit


var array1 = ["maulla", "gato", "garra", "salta", "Pelo"]
var array2 = ["ladra", "corre", "juega", "perro"]

func combined(first: [String], second: [String]) -> [String]{
    var combined = [String]()

    for i in 0 ..< second.count {
        combined.append( first[i])
        combined.append( second[i])
    }
    return combined
}

var arr3 = combined (first: array1, second: array2)


print(arr3)
