//
//  Swift-Bricks.swift
//  Swift-Bricks
//
//  Created by Konstantin Koval on 14/07/14.
//
//

import Foundation
//import SwiftSugar

public class Stack<T> : Container<T>, Sequence {

// MARK: - Init
  public init(_ items: Array<T>) {
    super.init(items)
  }
  
// MARK: Main methods
  public func push(object: T) {
    items += object
  }
  
  public func push(items: [T]) {
    self.items += items
  }
  
  public func pop() -> T {
    return items.removeLast()
  }
  
  public func pop( count: Int) -> [T] {
    
    assert(self.count >= count, "try to remove more elements that Exist")
    let removed = items[(items.endIndex - count)..<items.endIndex]
    items = items.removeLast(count)
    return Array(removed)
  }
  
  var top: T {
    return items.last!
  }
  
  override public func generate() -> IndexingGenerator<[T]> {
    return items.reverse().generate()
  }
}

@infix public func + <T>(left: Stack<T>, right: Stack<T>) -> Stack<T> {
  return Stack(left.items + right.items)
}

@assignment public func += <T>(inout left: Stack<T>, right: Stack<T>) {
  left = left + right
}



/*
@infix public func - <T: Equatable>(lhs: Stack<T>, rhs: Stack<T>) -> Stack<T>? {
  
  assert(lhs.count > rhs.count, "Fist Stack has to be bigger")
  
  var result = lhs
  for index in (min(lhs.count, rhs.count)-1)...0 {
    println(index)
    if lhs.items[index] == rhs.items[index] {
      result.pop()
    }
    else {
      break
    }
  }
  return result
}
*/

