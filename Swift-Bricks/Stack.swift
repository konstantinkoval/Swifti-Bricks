//
//  Swift-Bricks.swift
//  Swift-Bricks
//
//  Created by Konstantin Koval on 14/07/14.
//
//

import Foundation

class Stack<T> {

  var items: Array<T>
  
  init () {
    self.items = Array()
  }
  
  init (_ items: Array<T>) {
    self.items = items
  }
  
// Root stakc funtion
  func push(object: T) {
    items += object
  }
  
  func pop() -> T? {
    return items.isEmpty ? nil : items.removeLast()
  }
  
// Helpful
  func count() -> Int {
    return items.count
  }
  
  func isEmpty () -> Bool {
    return items.isEmpty
  }
  
  func iss () {
   
  }
  
}
