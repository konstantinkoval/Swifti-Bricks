//
//  List.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 01/08/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation

class Node<T> {
  internal var item: T
  internal var next: Node<T>?
//  internal weak var prev: Node<T>?
  
//  init(_ item: T, prev: Node<T>) {
//    self.item = item
//    self.prev = prev
//  }
  
  init(_ item : T) {
    self.item = item
  }
  
  init(_ item : T, next: Node<T>?) {
    self.item = item
    self.next = next
  }
}

public class List<T>
{
  var head: Node<T>?
  var tail: Node<T>?
  
  public private(set) var count = 0

  public init () {}
  public init(_ item : T) {
    head = Node(item)
    tail = head
    count++
  }
  
  var front: T? {
    return head?.item
  }
  var back: T? {
    return tail?.item
  }
  
  public func pushBack(item: T) {
    insertAtTail(item)
    count++
  }
  
  public func pushFront(item: T) {
    insertAtFront(item)
    count++
  }
  
//  MARK: Pop 
//  public func popBack() -> T? {
//    let item = tail
//    if tail {
//      tail = tail
//    }
//    return
//  }
  
  public func popFront() -> T? {
    let item = head
    if let item = item {
      head = item.next
    }
    return item?.item
    
  }
//
//  public func popBack() -> T {
//    let popItem = tail?.item
//    return popItem!
//  }
  
  private func insert(node: Node<T> , after: Node<T>) {
    node.next = after.next
    after.next = node
  }
  
  private func insertAtFront(item: T) {
//  TODO: improve it. Use construct
    var newNode = Node(item)
    newNode.next = head
    head = newNode
  }
  
  private func insertAtTail(item: T) {
    var newNode = Node(item)
    if let tail = tail {
      tail.next = newNode
    }
    tail = newNode
  }
}
