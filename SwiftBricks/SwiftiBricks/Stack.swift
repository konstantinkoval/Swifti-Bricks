//
//  Swift-Bricks.swift
//  Swift-Bricks
//
//  Created by Konstantin Koval on 14/07/14.
//
//

import Foundation
//import SwiftSugar

public struct Stack<T> :Containerable, SequenceType, Printable, ClassNamePrintable {
   typealias Element = T
  private var container: Container<T>
  
//  MARK:- Containerable
  public init (_ items: Array<T>) {
    container = Container(items)
  }
  
  public init (_ item: T) {
    self.init([item])
  }
  
  public init() {
    self.init([])
  }
  
  public var count: Int {
    return container.count
  }
  
  public var isEmpty: Bool {
    return container.isEmpty
  }

  
// MARK: Main methods
  mutating public func push(object: T) {
    container.items.append(object)
  }
  
  mutating public func push(items: [T]) {
    self.container.items += items
  }
  
  mutating public func pop() -> T {
    return container.items.removeLast()
  }
  
  mutating public func pop( count: Int) -> [T] {
    
    assert(self.count >= count, "try to remove more elements that Exist")
    let removed = container.items[(container.items.endIndex - count)..<container.items.endIndex]
    container.items = container.items.removeLast(count)
    return Array(removed)
  }
  
  var top: T {
    return container.items.last!
  }
  
  public func generate() -> IndexingGenerator<[T]> {
    return container.items.reverse().generate()
  }
  
  public var description: String {
    return container.description
  }
  public var className: String {
    return "Stack"
  }
}

public func + <T>(left: Stack<T>, right: Stack<T>) -> Stack<T> {
  return Stack(left.container.items + right.container.items)
}

 public func + <T>(lhs: Stack<T>, rhs: T) -> Stack<T> {
  var stackItems = lhs.container.items
  stackItems.append(rhs)
  return Stack(stackItems)
}

public func + <T>(lhs: Stack<T>, rhs: [T]) -> Stack<T> {
  return Stack(lhs.container.items + rhs)
}

public func += <T>(inout left: Stack<T>, right: Stack<T>) {
  left = left + right
}

public func += <T>(inout left: Stack<T>, right: T) {
  left = left + right
}

public func += <T>(inout left: Stack<T>, right: [T]) {
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

