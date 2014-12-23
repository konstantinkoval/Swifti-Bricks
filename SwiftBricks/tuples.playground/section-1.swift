// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let http404Error = (404, "Not Found")
let http200Error = (statusCode:404, description:"Not Found")
http200Error.statusCode
http200Error.description

func getServerContent() ->(data: String?, error:(errorCode: Int, description: String)? ) {
  return ("data from server", nil)
}

let res = getServerContent()

res.error
res.data

if let error = res.error {
  println("Error \(error.description) with code: \(error.errorCode)")
}
