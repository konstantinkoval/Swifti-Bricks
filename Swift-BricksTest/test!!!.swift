//
//  test!!!.swift
//  Swift-Bricks
//
//  Created by Konstantin Koval on 15/07/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

import Foundation
import Sleipnir

func test<T: Printable> (par: T) {
  println("aa \(par)")
  
  
  var ar = Array<Int>()
  ar.append(10)
  
  var ar22 = Array<Int?>()
  ar22.append(nil)
  ar22[10].getLogicValue()
  ar.count

}

