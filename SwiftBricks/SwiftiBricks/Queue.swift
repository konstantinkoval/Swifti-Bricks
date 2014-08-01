//
//  Queue.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 31/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation
//import SwiftSugar

public class Queue<T> : Container<T> {

  // MARK: - Init
  public init(_ items: Array<T>) {
    super.init(items)
  }
  
  public func push(item: T) {
    items.insert(item, atIndex: 0)
  }
  
  public func push(items: [T]) {
    self.items = items + self.items
  }
  
  public func pop() -> T {
    return items.removeLast()
  }
  
  var front: T {
    return items.last!
  }
  
  var back: T {
    return items[0]
  }
  
  public func pop(count: Int) -> [T] {
    assert(self.count >= count, "try to remove more elements that Exist")
    let removed = items[(items.endIndex - count)..<items.endIndex]
    items = items.removeLast(count)
    return Array(removed)

  }
}
