import Cocoa
import Foundation

func getInt() -> Int {
  return 10
}
func tryGetInt() -> Int? {
  return nil
}

var a: Int = getInt()
var b: Int? = tryGetInt()


class DataImporter {

}

class Person {
  
  var age  = 0
  var name = "Defaul"
  var secondName = "Defaul"
  
  lazy var importer = DataImporter()

  init(age: Int, name: String) {
    self.age = age
    self.name = name
  }
  deinit {
    println("say goodbye")
  }
  
  func hello() {
    println("Hello \(name)")
  }
  
  var fullName: String {
    return name + " " + secondName
  }
}

//class Perant : Person {
//
//  var children :[Person]
//  
//  override init(age: Int, name: String) {
//    children = []
//    super.init(age: age, name: name)
//  }
//  
//  convenience init () {
//    self.init(age:0, name:"lala")
//  }
//  
//  override var age: Int {
//    
//    willSet {
//      println("age will be changed")
//    }
//    didSet {
//      println("age is changed")
//    }
//  }
//  
//  subscript(index: Int) -> Person {
//    get {
//      return children[index]
//    }
//    set(newValue) {
//        children[index] = newValue
//    }
//  }
//  
//}



class Perant : Person {
  
  var children :[Person]
  
  override init(age: Int, name: String) {
    children = []
    super.init(age: age, name: name)
  }

  init(children: [Person], age: Int, name: String) {
    self.children = children
    super.init(age: age, name: name)
  }
  
  convenience init () {
    self.init(age:0, name:"")
  }
  
  override var age: Int {
    
    willSet {
      println("age will be changed")
    }
    didSet {
      println("age is changed")
    }
  }
  
  subscript(index: Int) -> Person {
    get {
      return children[index]
    }
    set(newValue) {
      children[index] = newValue
    }
  }
  
}
