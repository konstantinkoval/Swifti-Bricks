//
//  Container.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 31/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation


protocol ContainerCollection {
  
}

protocol Containerable : SequenceType {
  typealias Element
  
  var items: [Element] { get set }
  
  init ()
  init (_ item: Element)
  init (_ items: Array<Element>)
  
  var count: Int { get }
  var isEmpty: Bool { get }
  
  mutating func clear ()
  
}

public struct Container<T> : Containerable, Printable, ClassNamePrintable {

  typealias Element = T
  internal var items = Array<T>()

//  MARK: - Init 
  public init (_ items: Array<T>) {
    self.items = items
  }

  public init (_ item: T) {
    self.init([item])
  }
  
  public init() {
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
  mutating public func clear () {
    self.items.removeAll()
  }
  
//  MARK: - Sequence
  public func generate() -> IndexingGenerator<[T]> {
    return items.generate()
  }
  
  public var description: String {
    return "\(className) - count: \(count) \n" +
      "elements: \(items)"
  }
  
  public var className: String {
    return "Container"
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
