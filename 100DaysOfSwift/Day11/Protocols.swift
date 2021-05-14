//
//  Protocols.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/14/21.
//


// A protocal can inherit from another protocol(s)
// Struct can inherit from more than one protocol

protocol Identifier {
    var id: String { get set }
    
    func displayID() -> Void
}

struct User: Identifier {
    var id: String
    
    func displayID() {
        print("ID: \(self.id)")
    }
}

// Extensions
// basically add functionality to protocol/classes that are not already implemented
extension User {
    mutating func updateID(_id: String) {
        self.id = _id
    }
}


func mainProtocols() {
    var user = User(id: "1")
    user.displayID()
    user.updateID(_id: "2")
    user.displayID()
    
}




mainProtocols()
