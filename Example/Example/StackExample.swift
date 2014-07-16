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
  s.push(20)
  s.push(30)
  let item = s.pop()
  s.isEmpty()
  s.count()
  
  for item in s {
    println(item)
  }

  println(s.isEmpty())
  for (index, item) in enumerate(s) {
    println(index, item)
  }

}

