//
//  StackExample.swift
//  Swifti-Bricks Example
//
//  Created by Konstantin Koval on 16/07/14.
//
//

import SwiftiBricks
func useStack()
{
  var s = Stack<Int>()
  s.push(10)
  s.push(20)
  s.push(30)
  let item = s.pop()
  s.isEmpty
  s.count
  
  for item in s {
    println(item)
  }
  let s1 = Stack<Int>(1)
  let s2 = Stack<String>(["1", "2"])
  let s3 = Stack<Int>(3)
  
  let a = [1, 2] - 1
  println(a)
  var res = s1 + s3
  let theSame = s1 == s3

  println(s.isEmpty)
  for (index, item) in enumerate(s) {
    println(index, item)
  }
    
  var shoppingList: [String] = ["Eggs", "Milk"]
  shoppingList += "as"
}

class A<T> {
  var items: [T]

  public init (_ items: [T] ) {
    self.items = items
  }
  
  public convenience init (_ item: T) {
    self.init([item])
  }

  public convenience init () {
    self.init([])
  }
}

class B<T> : A<T> {
  
  public init (_ items: [T] ) {
    super.init(items)
  }

  func printMe() {
    println("Me")
  }
}

func testA() {
  let a = A()
  let b = B()
}


