//
//  Swift-Bricks.swift
//  Swift-Bricks
//
//  Created by Konstantin Koval on 14/07/14.
//
//

import Foundation

struct Stack<T> {

  var items: [T]
  
  init () {
    self.items = Array()
  }
  
  init (_ items: Array<T>) {
    self.items = items
  }
  
// Root stakc funtion
  mutating func push(object: T) {
    items += object
  }
  
 mutating func pop() -> T {
    return items.removeLast()
  }
  
// Helpful
  func count() -> Int {
    return items.count
  }
  
  func isEmpty () -> Bool {
    return items.isEmpty
  }
}
