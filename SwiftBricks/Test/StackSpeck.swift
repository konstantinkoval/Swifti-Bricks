//
//  FirstSpec.swift
//  Sleipnir
//
//  Created by AlexDenisov on 6/16/14.
//  Copyright (c) 2014 railsware. All rights reserved.
//

import Sleipnir

class StackSpec : SleipnirSpec {
    
  var stackContext : () = context("stack") {
    var stack = Stack<Int>()
    
    beforeEach {
      stack = Stack<Int>()
    }
    
//    afterEach {
//      stack = nil
//    }
    
    describe("empty stack") {
      
      it("should have 0 items") {
        expect(stack.count()).toNot(equal(4))
      }
      it("should be empty") {
       expect(stack.isEmpty()).to(equal(true))
      }
      it("shold fail on pop nil optional") {
      }
    }
    
    describe("stack with 5 object") {
      beforeEach {
        stack = Stack<Int>([1, 2, 3, 4, 55])
      }
      
      it("shold not be empty") {
        expect(stack.isEmpty()).to(equal(false))
      }
      it("shold have 5") {
        expect(stack.count()).to(equal(5))
      }
    }
    
    describe("general stack behaviour") {
      beforeEach {
        stack.push(101)
      }
      
      describe("push") {
        it("should increse size") {
          let size = stack.count()
          stack.push(1)
          expect(stack.count()).to(equal(size + 1))
        }
        it("should add new element to the tail") {
          stack.push(10)
          expect(10).to(equal(stack.pop()))
        }
      }
      
      describe("pop") {
        it("should decrease size") {
          let size = stack.count()
          stack.pop()
          expect(stack.count()).to(equal(size - 1))
        }
        it("shold return last object") {
          expect(stack.pop()).to(equal(101))
        }
      }
    }
  }
}
