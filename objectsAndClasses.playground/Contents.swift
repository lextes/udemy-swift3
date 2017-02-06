//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var headLights = 2
    var horsePower = 468
    var model = ""
    
    func drive(){
        //accelerate the vehicle
        
    }
    
    func brake(){
        
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "150F"
ford.brake()


func passByReference(vehicle: Vehicle) {
        vehicle.model = "chesse"
}

print(ford.model)
passByReference(vehicle: ford)
print(ford.model)

var someonesAge = 20

func passByValue(age: Int){
    let newAge = age
}

passByValue(age: someonesAge)

