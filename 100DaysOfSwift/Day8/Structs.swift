//
//  Structs.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/10/21.
//

import Foundation


struct Person {
    
    // These are called stored properties
    var name: String
    var age: Int
    
    // This is valled computed property (it need to run some code to get the value)
    func isAdult() -> Bool {
        return age >= 18
    }
    
    // mutating will alow parameters change in strcut functions
    mutating func setName(name: String) {
        self.name = name
    }
}

struct Progress {
    var task: String
    var amount: Float {
        didSet {
            print("Downloading \(task) : \(amount)% completed")
        }
    }
}


func mainStructs() {
    var p = Person(name: "William", age: 25)
    p.age = 26
    print(p)
    p.setName(name: "John")
    print(p)
    
    print("Is person p adult: \(p.isAdult())")
    
    print("--------------------")
    var progress = Progress(task: "xcode", amount: 0)
    progress.amount = 0.1
    progress.amount = 0.2
    progress.amount = 0.25
    
}

mainStructs()
