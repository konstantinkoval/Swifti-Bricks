//
//  ListSpeck.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 01/08/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Sleipnir

class ListSpec : SleipnirSpec {
  
  var stackContext : () = context("List") {
    var list = List<Int>()
    beforeEach {
      list = List<Int>()
    }
    
    describe("create empty list") {

      it("should be created") {
        expect(list).toNot(beNil())
      }
      it("should have empty front") {
        expect(list.front).to(beNil())
      }
      it("should have empty back") {
        expect(list.back).to(beNil())
      }
      it("should have count = 0") {
        expect(list.count).to(equal(0))
      }
    }
    
    describe("create with element") {
      var listWiht1Element = List<Int>(1)

      it("should be created") {
        expect(listWiht1Element).toNot(beNil())
      }
      it("should set front") {
        expect(listWiht1Element.front).to(equal(1))
      }
      it("should set back") {
        expect(listWiht1Element.back).to(equal(1))
      }
      it("should have count = 1") {
        expect(listWiht1Element.count).to(equal(1))
      }
    }
    
    describe("push to head ot list") {

      it("shold increse size") {
        let count = list.count
        list.pushFront(1)
        expect(list.count).to(equal(count + 1))
      }
      
      it("should add element to the head") {
        list.pushFront(10)
        list.pushFront(11)
        expect(list.front).to(equal(11))
      }
    }
    
    describe("push to the back") {
      
      it("shold increse size") {
        let count = list.count
        list.pushBack(1)
        expect(list.count).to(equal(count + 1))
      }
      it("shold add element to the tail") {
        list.pushBack(10)
        list.pushBack(11)
        expect(list.back).to(equal(11))
      }
    }
    
    
  }
}
