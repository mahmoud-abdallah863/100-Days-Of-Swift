//
//  tuples.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/6/21.
//

import Foundation


func tuplesMain() {
    let emptyTuple = ()
    
    print("empty tuple = \(emptyTuple)")
    
    let fullName = (first: "Mahmoud", middle:"Kahlid", last:"Abdallah")
    print("full name tuple = \(fullName)")
    print("first name: \(fullName.0)") // or fullname.first
    print("last name = \(fullName.last)")
    
    
    let anotherName = ("Ahmad", "Abdallah")
    print("another name = \(anotherName)")
    print("another first name = \(anotherName.0)")
    
}

tuplesMain()
