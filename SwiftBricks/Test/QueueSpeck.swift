//
//  QueueSpeck.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 31/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation
import Sleipnir

class QueueSpec : SleipnirSpec {
  var stackContext : () = describe("Queue") {
  
    var queue = Queue<Int>()
    beforeEach {
      queue = Queue<Int>()
    }
    
    describe("When push element") {

      it("shold increase size") {
        queue.push(1)
        expect(queue.count).to(equal(1))
      }
      it("should add elemet to back of queue") {
        queue.push(2)
        expect(queue.back).to(equal(2))
      }
    }
    
    describe("when push many elements") {
      beforeEach {
         queue.push(1)
      }

      it("shold add elemts to the back") {
        queue.push([2,3])
        let other = Queue<Int>([2,3,1])
        expect(queue.front).to(equal(1))
        expect(queue.back).to(equal(2))
        expect(queue == other).to(beTrue())
      }
      it("shold increse size wit new numbers of elements") {
        let sizeBefore = queue.count
        queue.push([2,3])
        expect(queue.count).to(equal(sizeBefore + 2))
      }
    }
    
    describe("When pop element") {
      beforeEach {
        queue.push(1)
      }
      
      it("Should decrease size") {
        let countBefore = queue.count
        queue.pop()
        expect(queue.count).to(equal(countBefore - 1))
      }
      
      it("Shold pop from front of the queue") {
        let front = queue.front
        expect(queue.pop()).to(equal(front))
      }
    }
    
  }
}