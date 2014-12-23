// Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
//var ar:[Int] = [1,2,3]
//var ar2:[Int] = [1,2,3]
//
//ar + ar2
//
//
//var array = ["one","two"]
//array.extend(["three","four"])
//
//
//class Person {
//  
//  var age  = 0
//  var name = ""
//  
//  init(age: Int, name: String) {
//    self.age = age
//    self.name = name
//    birthDate = NSDate.date()
//  }
//  
//  func hello() {
//    println("Hello \(name)")
//  }
//}
//
//let me = Person(age: 26, name: "Konstantin")
//me.hello()
//
//
//var age = 26
//var name = "Konstantin"
//
//let isNameEmpty = name.isEmpty
////let isAgeEmpty = age.isEmpty
//
//var fullName = name + " Koval"
////var nameAndAge  = fullName + age
//
//func isEven(num: Int) -> Bool {
//  return num % 2 == 0
//}
//
//isEven(2)
////isEven("2")
//
//var name1: String
//let a = 00
//
//name1.isEmpty



////// Nil
/*
// Java and C++
Person person
person.name // NullPointerException
if(person != null) {

}

// Objective-C

Person* person
person = Person(age: 26, name: "Konstantin")
person.name

if(person) {
NSString *name = person.name
if (name) {

}
}*/

//func getPerson () ->Person {
//  return Person(age: 26, name: "Konstantin")
//}
//
//var person = getPerson()
////person = Person(age: 26, name: "Konstantin")
//person.name
//
//var maybePerson: Person?
//
//maybePerson.hasValue
//if maybePerson != nil {
//  //  maybePerson.name
//  maybePerson!.name
//}
//
//if let actualPerson = maybePerson {
//  actualPerson.name
//}
//
//if let maybePerson = maybePerson {
//  maybePerson.name
//}
//
//
//func makeBaby() -> Person {
//  return Person(age: 1, name: "Small Konstantin")
//}
//
//
////enum Optional {
////  case None
////  case Some()
////}
//
//
// -----------  Functional -----------

func increase(ar :[Int], #by: Int) -> [Int] {
  
  var result = ar
  for var i = 0; i < ar.count; i++ {
    result[i] += by
  }
  return result
}

func decrease(ar :[Int], #by: Int) -> [Int] {
  
  var result = ar
  for var i = 0; i < ar.count; i++ {
    result[i] -= by
  }
  return result
}

func modify(ar: [Int], #operation: (Int) ->(Int) ) -> [Int] {
  
  var result = ar
  for var i = 0; i < ar.count; i++ {
    // Do operation
    result[i] = operation(ar[i])
  }
  return result
}


var ar1 = [1,2,3]
let res = increase(ar1, by:10)
let res1 = decrease(ar1, by:5)

var res3 = modify(ar1) { $0 + 10 }
res3 = modify(ar1) { $0 - 2 }
res3 = modify(ar1) { $0 * 2 }

var increseBy5 = ar1.append
increseBy5(10)
ar1




























