//
//  Swift-Bricks.swift
//  Swift-Bricks
//
//  Created by Konstantin Koval on 14/07/14.
//
//

import Foundation

struct Stack<T> :Equatable {

  var items: [T]
  
  init () {
    self.items = Array()
  }
  init (_ item: T) {
    self.items = [item]
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
  var count: Int {
    return items.count
  }
  
  var isEmpty: Bool {
    return items.isEmpty
  }
}

extension Stack : Sequence {
 func generate() -> IndexingGenerator<[T]> {
  return items.generate()
  }
}

@infix func + <T>(left: Stack<T>, right: Stack<T>) -> Stack<T> {
  return Stack(left.items + right.items)
}

func == <T>(lhs: Stack<T>, rhs: Stack<T>) -> Bool {
  return lhs.count == rhs.count && lhs.items == rhs.items
}

