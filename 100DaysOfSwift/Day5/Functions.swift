//
//  Functions.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/7/21.
//

import Foundation


enum PasswordError: Error {
    case shit(reason: String)
}



func sayHello() {
    print("Hello World")
}

func printName(name: String) {
    print("Hello, \(name)")
}

// Omitting parameter label
func printName2(_ name: String){
    print("Hello, \(name)")
}

func getAge() -> Int{
    return 21
}

// Using parameter label
func sayHello(to name: String){
    print("Hello to you \(name)")
}

func printFavLanguage(favLanguage: String = "Kotlin") {
    print("Favoriate language: \(favLanguage)")
}

// Variadic function
func printNumbers(nums: Int...) {
    print("---------------------\nNumbers:")
    for (index, num) in nums.enumerated(){
        print("\(index) -> \(num)")
    }
}


func isValidPassword(password: String) throws -> Bool {
    if password != "123" {
        throw PasswordError.shit(reason:"Wrong password")
    }
    return true
}


func powerBy2(number: inout Int) {
    number *= number
}


func mainFunctions() {
    sayHello()
    printName(name: "Mahmoud")
    printName2("Ahmad")
    
    let age = getAge()
    print("Age: \(age)")
    
    sayHello(to: "Mahmoud")
    printFavLanguage()
    
    printNumbers(nums: 1, 2, 3, 2, 1, 0)
    
    print("------------")
    do {
        try isValidPassword(password: "1234")
        print("Password is valid")
    }catch  PasswordError.shit(let reason){
        print(reason)
    } catch {
        print("Something is wrong")
    }
    
    
    // Change variable in function
    var number = 2
    print("Number = \(number)")
    powerBy2(number: &number)
    print("Number = \(number)")
    
}

mainFunctions()
