// Playground - noun: a place where people can play

import Cocoa

let size = (20, 40)

switch size {
case (0, 0):
  println("(0, 0) rect")
case let (width, height) where width == height:
  println("square with sides \(width)")
case (1...10, 1...10):
  println("small rectangle")
case let (width, height):
  println("rectangle with width \(width) and height \(height)")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
  description += " a prime number, and also"
  fallthrough
default:
  description += " an integer."
}