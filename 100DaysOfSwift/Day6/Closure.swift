//
//  Clousures.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/9/21.
//

import Foundation

enum Exception: Error {
    case shit(reason: String)
}


func runAndCatch(action: () throws -> Void) {
    do {
        try action()
    } catch Exception.shit(let reason){
        print("Exception reason: \(reason)")
    } catch {
        print("Unhandled exception")
    }
}

func getFact() -> () -> (String, String) {
    return {
        ("The average American generates nearly 4.5 pounds of trash each day.", "It's usually a pretty mindless task to take out the trash—but maybe we should start thinking about it a little bit more. According to stats from the U.S. Environmental Protection Agency (EPA), in 2015 (the last year with data available), each American generates about 4.48 pounds of trash every single day, totaling 1,642.5 pounds per year.")
    }
}


func printFact(fact: (String, String), action: (String, String) -> Void ){
    print("\n\n\n")
    print("************************************")
    print("This is a random statistical fact:")
    action(fact.0, fact.1)
    print("The end.")
    print("************************************")
    print("\n\n\n")
}


func getCounterClosure() -> () -> Void {
    var counter = 0
    
    return {
        print("Counter = \(counter)")
        counter += 1
    }
}


func mainClosure() {
    let welcome = { (name: String) in
        print("Welcome \(name)!")
    }

    welcome("Mahmoud")
    
    
    let sum = { (a:Int, b: Int) -> Int in
        return a + b
    }
    
    let ab = sum(1, 2)
    print("1 + 2 = \(ab)")
    
    
    let f = {
        print("This function should not throw any exception")
    }
    
    let shit = { () throws -> Void in
        print("This is a function that throws an exception")
        throw Exception.shit(reason: "I want to throw this ∆")
    }
    
    runAndCatch(action: f)
    
    print("--------------------")
    runAndCatch(action: shit)
    
    print("--------------------")
    runAndCatch() {
        print("This is a function passed as trialed closure syntax")
    }
    
    
    print("--------------------")
    let fact = getFact()
    printFact(fact: fact()) { statistic, description in
        print("\t\(statistic)")
        print("***")
        print("\t\(description)")
    }
    
    
    print("--------------------")
    let counterClosure = getCounterClosure()
    counterClosure()
    counterClosure()
    counterClosure()
}

mainClosure()
