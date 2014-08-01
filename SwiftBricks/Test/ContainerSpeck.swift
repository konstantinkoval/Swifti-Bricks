//
//  ContainerSpeck.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 31/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation
import Sleipnir

class ContainerSpec : SleipnirSpec {
  var stackContext : () = describe("Container") {
  
    context("When created as ampty") {
      let container = Container<Int>()
      
      it("shold be create") {
        expect(container).toNot(beNil())
      }
      
      it("show have 0 elements") {
        expect(container.count).to(equal(0))
      }
      it("shold be empty") {
        expect(container.isEmpty).to(beTrue())
      }
    }
    
    context("When create with 1 Element") {
      let container = Container(1)

      it("shold be create") {
        expect(container).toNot(beNil())
      }
      it("show have 1 elements") {
        expect(container.count).to(equal(1))
      }
      it("shold not be empty") {
        expect(container.isEmpty).to(beFalse())
      }
    }
    
    context("When created with collestion of elements") {
      let container = Container<Int>([1,2,3])

      it("shold be create") {
        expect(container).toNot(beNil())
      }
      it("show have 3 elements") {
        expect(container.count).to(equal(3))
      }
      it("shold not be empty") {
        expect(container.isEmpty).to(beFalse())
      }
    }
    
    context("General cases") {
      it("shold be iterable in for in") {
        let container = Container<Int>([1,2,3])
        for (index, el) in enumerate(container) {
          expect(el).to(equal(container.items[index]))
        }
      }
      
      describe("shold be comparable") {
        it("should be equal") {
          expect(Container(1) == Container(1)).to(beTrue())
        }
        it("should not be equal") {
          expect(Container(2) == Container(1)).to(beFalse())
        }
      }
      
      it("shold remove all elements and become clear") {
        let container = Container<Int>([1,2,3])
        expect(container.isEmpty).to(beFalse())
        container.clear()
        expect(container.isEmpty).to(beTrue())
      }
    }
  }
}
