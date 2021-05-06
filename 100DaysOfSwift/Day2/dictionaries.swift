//
//  dictionaries.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/6/21.
//

import Foundation


func mainDictionary() {
    let emptyDictionary = Dictionary<String, String>()
    let emptyDictionary2 = [String: String]()
    print("Type of emptyDictionary: \(type(of: emptyDictionary))")
    print("Type of emptyDictionary2: \(type(of: emptyDictionary2))")
    print(type(of: emptyDictionary2))
    print("Is empty dictionary \(emptyDictionary.isEmpty)")
    
    
    print("------------------------")
    var fullname = ["first":"Mahmoud", "last": "Abdallah"]
    print(type(of: fullname))
    
    print("Full name = \(fullname)")
    
    print("First name = \(fullname["first"])")
    
    
    // Updating value in dict
    print("------------------------")
    fullname.updateValue("Ahmad", forKey: "first")
    print("Full name after updating first name = \(fullname)")
    
    // counting number of elements in dictionary
    print("Full name count = \(fullname.count)")
    
    
    // Creating dictionary from arrays
    print("------------------------")
    let characters = ["A", "B", "C", "D"]
    let numbers = [1, 2, 3, 4]
    
    var charNumDictionary = Dictionary(uniqueKeysWithValues: zip(characters, numbers))
    
    print("Characters = \(characters)")
    print("Numbers = \(numbers)")
    print("Char num dictionary = \(charNumDictionary)")
    
    
    
    // Filtering
    print("------------------------")
    let above_3 = charNumDictionary.filter{ $0.value >= 3 }
    print("Filtered numbers above 3 = \(above_3)")
    
    
    // Remove key value pair
    let removedElement = charNumDictionary.removeValue(forKey: "A")
    print("Removed element = \(removedElement)")
    
    print("Char num dictionary after removing key 'A': \(charNumDictionary)")
    
    
    // Another way to remove element from dictionary
    charNumDictionary["B"] = nil
    print("Char num dictionary after removing key 'B': \(charNumDictionary)")
    
    
    // Looping over dictionary
    print("Looping over char num dictionary")
    for (key, value) in charNumDictionary {
        print("Element<\(key), \(value)>")
    }
    
    print("------------------------")
    print("Looping over char num dictionary with index")
    for (index, (key, value)) in charNumDictionary.enumerated() {
        print("index(\(index): Element<\(key), \(value)>")
    }
    
    
    // Dictionary key\values to array
    print("------------------------")
    let anotherCharactersArray = [String](charNumDictionary.keys)
    let anotherNumbersArray = [Int](charNumDictionary.values)
    
    print("Another char array = \(anotherCharactersArray)")
    print("Another num array = \(anotherNumbersArray)")
    
    
    // Get value with default
    print("------------------------")
    let zValue = charNumDictionary["Z", default:-1]
    print("charNumDictionary[Z] = \(zValue)")
    
}

mainDictionary()
