// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
// -----------  Genbericks -----------

var a = 10
var b = 20

func swapInt(inout a: Int, inout b: Int) {
  let tmp = a
  a = b
  b = tmp
}

swapInt(&a, &b)

func swapSting(inout a: String, inout b: String) {
  let tmp = a
  a = b
  b = tmp
}

var str1 = "One"
var str2 = "Two"

swapSting(&str1, &str2)

func swap<T>(inout a: T, inout b: T) {
  let tmp = a
  a = b
  b = tmp
}

//func min<T : Comparable>(x: T, y: T) -> T {
//  return x < y ? x : y
//}
min(1, 10)
min("a", "J")


func MyminElement<R : SequenceType where R.Generator.Element : Comparable>(range: R) -> R.Generator.Element {

  var min: R.Generator.Element?
  for object in range {
    if min == nil || object < min {
      min = object
    }
  }
  return min!
}

let smal = [10,2,3,1]

let r= MyminElement(smal)
