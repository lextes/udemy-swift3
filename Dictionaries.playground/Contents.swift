//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegeres = [Int: String]()

namesOfIntegeres[3] = "tree"
namesOfIntegeres[44] = "forty four"

namesOfIntegeres = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles Internactional"]

print("The aiports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The aiports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heatrow"
airports["DEV"] = "Devslopes International"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys{
    print("Key: \(key)")
}

for val in airports.values{
    print("Value: \(val)")
}








