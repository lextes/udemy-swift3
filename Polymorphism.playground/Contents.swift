//: Playground - noun: a place where people can play

import UIKit

class Shape{
    var area: Double?
    
    func CalculateArea(valA: Double, valB: Double){
        
    }
}

class Triangle: Shape{
    override func CalculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape{
    override func CalculateArea(valA: Double, valB: Double) {
        area = valA * valB
        print("huevos")
    }
}



/* Este no es el mejor metodo

 class Rectangle{
    var area: Double?
    
    func calculateArea(length: Double, width: Double){
        area = length * width
    }
}

class Triangle{
    var area: Double?
    func calculateArea(base: Double, heigth: Double){
        area = (base * heigth) / 2
    }
}
*/

