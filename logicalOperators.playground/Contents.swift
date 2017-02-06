//: Playground - noun: a place where people can play

import UIKit


func add(num1: Double, num2: Double) -> Double{
    return num1 + num2
}

var orange = 12
var apples: Double = 14
let sum = add(num1: Double(orange), num2: apples)

// Logical NOT operator - unary prefix operator

let allowedEntry = false

if !allowedEntry {
    print("Acces DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = true
let iamTomCruise = false

if enteredDoorCode && passedRetinaScan || iamTomCruise {
    print("Bienvenidos")
} else {
    print("Acceso Denegado")
}

let hasDoorKey = true
let knowsOverridePassword = false

if hasDoorKey || knowsOverridePassword {
    print("Bien hecho")
}else{
    print("No acceso")
}

