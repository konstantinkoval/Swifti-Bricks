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
    var stack: Stack<Int>!
    
    afterAll {
      stack = nil
    }
    
    describe("empty stack") {
      beforeAll {
        stack = Stack<Int>()
      }
      
      it("should have 0 items") {
        expect(stack.count()).toNot(equal(4))
      }
      it("should be empty") {
       expect(stack.isEmpty()).to(equal(true))
      }
      it("shold pop nil optional") {
        expect(stack.pop() == nil).to(beTrue())
      }
    }
    
    describe("stack with 5 object") {
      beforeAll {
        stack = Stack<Int>([1, 2, 3, 4, 55])
      }
      it("shold not be empty") {
        expect(stack.isEmpty()).to(equal(false))
      }

      it("shold have 5") {
        expect(stack.count()).to(equal(5))
      }
      it("shold have 4 after pop") {
        stack.pop()
        expect(stack.count()).to(equal(4))
      }
      it("shold pop last object") {
        expect(stack.pop()!).to(equal(55))
      }
    }

  }
}

   /* var library : () = context("Library") {

        var swiftLibrary: Library?
        beforeAll {
            swiftLibrary = Library()
        }
        
        afterAll {
            swiftLibrary = nil
        }
        
        describe("empty") {
            it("has no books") {
                expect(swiftLibrary!.hasBooks()).to(beFalse())
            }
        }
        
        describe("with books") {
            
            beforeEach {
                swiftLibrary!.addBook(Book(title: "Introduction to Swift", author: "Apple Inc."))
                swiftLibrary!.addBook(Book(title: "Using Swift with Cocoa", author: "Apple Inc."))
                swiftLibrary!.addBook(Book(title: "Swift tutorials", author: "John Doe"))
                swiftLibrary!.addBook(Book(title: "Programming iOS with Swift", author: "Vladimir Swiftin"))
            }
            
            afterEach {
                swiftLibrary!.clear()
            }
            
            it("is not empty") {
                expect(swiftLibrary!.hasBooks()).to(beTrue())
            }
            
            it("has correct number of books") {
                expect(swiftLibrary!.size()).to(equal(4))
                swiftLibrary!.removeLastBook()
                expect(swiftLibrary!.size()).to(equal(3))
            }
            
            describe("filters books") {
                it("by author") {
                    expect(swiftLibrary!.filterBy(author: "Apple Inc.").count).to(equal(2))
                }
                
                it("by title") {
                    expect(swiftLibrary!.filterBy(title: "tutorials").count).to(equal(1))
                }
            }
        }
    }*/

