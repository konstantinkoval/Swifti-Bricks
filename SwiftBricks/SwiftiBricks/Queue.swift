//
//  Queue.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 31/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation
//import SwiftSugar

public struct Queue<T> {

  private var container: Container<T>

// MARK: - Init
  public init(_ items: Array<T>) {
    container = Container(items)
  }
  
  private var items: Array<T> {
    get {
      return container.items
    }
    set {
      container.items = newValue
    }
  }
  
// MARK: Main methods
  mutating public func push(item: T) {
    items.insert(item, atIndex: 0)
  }
  
  mutating public func push(items: [T]) {
    self.items = items + self.items
  }
  
  mutating public func pop() -> T {
    return items.removeLast()
  }
  
  //  MARK: - Methods
  public var count: Int {
    return container.count
  }
  
  public var isEmpty: Bool {
    return container.isEmpty
  }
  
  var front: T {
    return items.last!
  }
  
  var back: T {
    return items[0]
  }
  
  mutating public func pop(count: Int) -> [T] {
    assert(self.count >= count, "try to remove more elements that Exist")
    let removed = items[(items.endIndex - count)..<items.endIndex]
    items = items.removeLast(count)
    return Array(removed)

  }

  public var className: String {
    return "Queue"
  }
}
