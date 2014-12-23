// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// -----------  Genbericks -----------

var name = "Konstantin"
name = "Tomas"
name += " Super"

let superName = "Super Konstantin"
superName += "and Tomas"

var people = ["Jon", "Sam"]
people.append("Arnold") // ["Jon", "Sam", "Arnold"]

let superPeople = ["Konstantin", "Rikke"]
superPeople.append("Tomas")


struct Rocketfarm {

  var people: [String]
  
  mutating func append (person: String) {
    people.append(person)
  }
}

var rocket = Rocketfarm(people: ["Halvor", "Jøer", "Dyre"])
rocket.append("Konstantin")

let rockkRocket = rocket
rockkRocket.append("Lars")


