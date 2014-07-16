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

extension Stack : Sequence {
 func generate() -> StackGenerator<T> {
    return items.generate() //StackGenerator( items: items[0..<items.count])
  }
}

struct StackGenerator<T> : Generator {
   mutating func next() -> T? {
    if items.isEmpty { return nil }
    let ret = items[0]
    items = items[1..<items.count]
    return ret
  }
  
  var items: Slice<T>
}
