//
//  Test.swift
//  SwiftiBricks
//
//  Created by Konstantin Koval on 05/08/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation
import UIKit

@objc class Person {
  
  var age  = 0
  var name = ""
  let birthDate: NSDate
  
  init(age: Int, name: String) {
    self.age = age
    self.name = name
    birthDate = NSDate.date()
  }
  
  func hello() {
    println("Hello \(name)")
  }
}

func test() {
 
  var view = UIView()
  view.backgroundColor = UIColor.greenColor()
  
  var label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
  label.text = "Happinessss!"
}
