// Playground - noun: a place where people can play

import Cocoa

var count = 5
count += 2


public class Rocketfarm {
  
  var people: [String] = []
  func append (person: String) {
    people.append(person)
  }
}

var rocket = Rocketfarm()
rocket.append("Konstantin")
rocket.people

public func + (rocket: Rocketfarm, person: String) -> Rocketfarm {
  
  var newRocket = rocket
  newRocket.append(person)
  return newRocket
}

public func << (rocket: Rocketfarm, person: String) -> Rocketfarm {
  return rocket + person
}

rocket + "Stian"
rocket << "Dyre"

postfix operator ^^^ {}
postfix func ^^^ (rocket: Rocketfarm) -> Rocketfarm {
  var newRocket = rocket
  newRocket.people.removeAll()
  return newRocket
}

rocket = rocket^^^
rocket.people

