//
//  StackExample.swift
//  Swifti-Bricks Example
//
//  Created by Konstantin Koval on 16/07/14.
//
//

import SwiftiBricks
func useStack()
{
  var s = Stack<Int>()
  s.push(10)
  s.pop()
  
  
  
  for item in s {
    println(item)
  }
}

