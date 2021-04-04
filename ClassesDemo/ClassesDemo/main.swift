//
//  main.swift
//  ClassesDemo
//
//  Created by Chandran, Sudha on 04/04/21.
//

import Foundation

let skeleton = Enemy(health: 10, attachStrength: 100)

//Drogon child Class
//let dragon = Dragon()
//dragon.wingSpan = 5
//dragon.attachStrength = 15
//dragon.talk(speech: "asdksajkdhsajkbd akjlsdhasjkd laskjdhsjhdbjsh asjkdhskjdhs ")
//dragon.move()
//dragon.at tack()

//Optional Demo

let myOptional: String?

myOptional = nil

//1. Force Unwrapping
//print(myOptional!)

//2. Checking for Nil Value
if myOptional != nil {
    
    print(myOptional!)
}
//3. Optional Binding
if let test = myOptional {
    print(test)
}
//4. Nil coalescing operator
let printVal = myOptional ?? "Sudha"
print(printVal)

//opitional Struct / Class

struct OptionalStruct {
    var property = 123
    func method() {
        print("Im struct's method")
    }
}

let myOptionalStruct: OptionalStruct?

myOptionalStruct = OptionalStruct() //if nil below lines will crash

print(myOptionalStruct!.method()) //optional chaining
print(String(myOptionalStruct!.property))
