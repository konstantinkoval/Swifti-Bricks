//
//  Container.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 31/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation

protocol Containerable : Sequence {
  typealias Element
  
  var items: [Element] { get set }
  
  init ()
  init (_ item: Element)
  init (_ items: Array<Element>)
  
  var count: Int { get }
  var isEmpty: Bool { get }
  
}

public class Container<T> : Containerable {

  typealias Element = T
  internal var items = Array<T>()

//  MARK: - Init 
  public init (_ items: Array<T>) {
    self.items = items
  }

  public convenience init (_ item: T) {
    self.init([item])
  }
  
  public convenience init() {
    self.init([])
  }
  
//  MARK: - Methods
  public var count: Int {
    return items.count
  }
  
  public var isEmpty: Bool {
    return items.isEmpty
  }

//  MARK: - mutate functions
  func clear () {
    self.items.removeAll()
  }
  
//  MARK: - Sequence
  public func generate() -> IndexingGenerator<[T]> {
    return items.generate()
  }
}

public func == <T : Equatable> (lhs: Container<T>, rhs: Container<T>) -> Bool {
  return lhs.count == rhs.count && lhs.items == rhs.items
}

// extensions are buggy at the moment
//extension Stack : Sequence {
//  public func generate() -> IndexingGenerator<[T]> {
//    return items.generate()
//  }
//}
