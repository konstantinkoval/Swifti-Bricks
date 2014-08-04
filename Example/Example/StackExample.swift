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
  
  println("Count: \(s.count)")
  println("Empty: \(s.isEmpty)")
  
  println("Pop item: \(s.pop())")
  
  for item in s {
    println(item)
  }
  for (index, item) in enumerate(s) {
    println(index, item)
  }
  
  println("pop 2 items: \(s.pop(2))")
  
  var s1 = Stack(1)
  let s2 = Stack(3)
  var s3 = Stack<String>(["1", "2"])
  
  println(s1 + s2)
  println(s1 + 1)
  println(s1 + [1,2,3])

  s1 += 1
  s3 += ["A", "B"]

  //var res = s1 + s3 Type errors. Can't add Stack<Int> to Stack<String>
  
  if s1 == s2 {
    println("s1 == s2")
  } else {
    println("s1 != s2")
  }
}


