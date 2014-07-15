//
//  Swift_BricksTests.swift
//  Swift-BricksTests
//
//  Created by Konstantin Koval on 14/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import UIKit
import XCTest

class Swift_BricksTests: XCTestCase {
    
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testStackCreation() {
    XCTAssertNotNil(Stack<Int>(), "stack is created")
    XCTAssertNotNil(Stack<Double>(), "stack is created")
    XCTAssertNotNil(Stack<String>(), "stack is created")
    XCTAssertNotNil(Stack<UIView>(), "stack is created")
  }
  
  func testPush() {
    let stack = Stack<Int>()
    stack.push(111)
    XCTAssertEqual(1, stack.count(), "Stack shold have 1 object stft push")
  }

  func testPop() {
    let stack = Stack<Int>([1, 111])
    let poped = stack.pop()
    XCTAssertEqual(111, poped, "111 is is not equalo to \(poped)")
  }

  
  func testCount() {
    let stack = Stack([1])
    XCTAssertEqual(1, stack.count(), "1 is not equalo to \(stack.count())")
    stack.push(10)
    XCTAssertEqual(2, stack.count(), "1 is not equalo to \(stack.count())")
    stack.pop()
    XCTAssertEqual(1, stack.count(), "1 is not equalo to \(stack.count())")
  }
  
  func testEmpty() {
    let stack = Stack<Int>()
    XCTAssertTrue(stack.isEmpty(), "empty stack should be empty")
    stack.push(1)
    XCTAssertFalse(stack.isEmpty(), "stack is not empty")
  }
  
}
