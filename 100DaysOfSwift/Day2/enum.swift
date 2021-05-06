//
//  enum.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/6/21.
//

import Foundation



// With associated value
enum Status {
    case SUCCESS
    case FAILURE(reason: String)
    
    func get() -> String {
        switch self {
        case .SUCCESS:
            return ""
        case .FAILURE(let reason):
            return reason
        }
    }
}

enum Scores: Int {
    case max = 100
    case min = 0
    case average = 50
}


//
enum Incrementing: Int {
    case first = 1
    case second
    case third
}


func enumMain() {
    
    
    // Creating enum
    let statusEnum = Status.self
    print("Type of statusEnum = \(type(of: statusEnum))")
    
    print("Success status enum = \(Status.SUCCESS)")
    
    
    let failurStatus = Status.FAILURE(reason: "Something went wrong")
    
    print(failurStatus)
    print("FailurStatus reasong \(failurStatus.get())")
    
    print("------------------------")
    print("Using raw values in enum")
    
    
    print("max score = \(Scores.max.rawValue)")
    print("min score = \(Scores.min.rawValue)")
    print("averae score = \(Scores.average.rawValue)")
    
    
    print("------------------------")
    print("Using raw values in enum (incrementing raw value)")
    print("First value = \(Incrementing.first.rawValue)")
    print("Second value = \(Incrementing.second.rawValue)")
    print("Third value = \(Incrementing.third.rawValue)")
    
}

enumMain()
