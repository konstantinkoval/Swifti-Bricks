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
    
    describe("Empty stack") {
      
      it("should have 0 items") {
        expect(stack.count).toNot(equal(4))
      }
      it("should be empty") {
       expect(stack.isEmpty).to(equal(true))
      }
      it("shold fail on pop nil optional") {
      }
    }
    
    describe("Stack with 5 object") {
      beforeEach {
        stack = Stack<Int>([1, 2, 3, 4, 55])
      }
      
      it("shold not be empty") {
        expect(stack.isEmpty).to(equal(false))
      }
      it("shold have 5") {
        expect(stack.count).to(equal(5))
      }
    }
    
    describe("General stack behaviour") {
      beforeEach {
        stack.push(101)
      }
      
      describe("push") {
        it("should increse size") {
          let size = stack.count
          stack.push(1)
          expect(stack.count).to(equal(size + 1))
        }
        it("should add new element to the tail") {
          stack.push(10)
          expect(10).to(equal(stack.pop()))
        }
      }
      
      describe("pop") {
        it("should decrease size") {
          let size = stack.count
          stack.pop()
          expect(stack.count).to(equal(size - 1))
        }
        it("shold return last object") {
          expect(stack.pop()).to(equal(101))
        }
        it("shold pop 2 element") {
          stack.push(102)
          expect(stack.pop(2)).to(equal([101, 102]))
        }
      }
      
      it("should be equal") {
        let stack1 = Stack(101)
        expect(stack == stack1).to(beTrue())
      }
      
      it("should be able to add 2 stacks") {
        let stack1 = stack + Stack(1)
        let stack2 = Stack<Int>([101, 1])
        expect(stack1 == stack2).to(beTrue())
      }
      
      it("shold be iterable in for in") {
        let stack = Stack<Int>([1,2,3])
        for el in stack {
          expect(el).toNot(beNil())
        }
      }
      
//      it("shold be able minus stacks") {
//        let stack2 = Stack<Int>([101, 1]) - Stack(1)
//        expect(stack == stack2!).to(beTrue())
//      }
    }
  }
}
