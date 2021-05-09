//
//  AdvancedStructs.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/10/21.
//

import Foundation

struct Person2 {
    var name: String
}

struct Book {
    private var id: Int
    
    var name: String
    
    // Can be accessed only from Bokk struct not from instances
    static var nOfBooks = 0
    
    // This property will only be created when first accessed
    lazy var writer = Person2(name: "name")
    
    init() {
        id = 0
        name = ""
    }
    
    func storBook() {
        Book.nOfBooks += 1
    }
}


func mainAdvancedStructs() {
    var p = Book()
    print(p)
    
    p.storBook()
    p.storBook()
    print(p)
    
    print("Number of books = \(Book.nOfBooks)")
}

mainAdvancedStructs()
