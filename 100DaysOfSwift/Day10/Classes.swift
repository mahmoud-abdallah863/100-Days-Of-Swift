//
//  Classes.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 5/14/21.
//


class Person3 {
    
    // Properties SHOULD have init func
    var name: String
    var age: Int
    
    init(_name: String, _age: Int) {
        self.name = _name
        self.age = _age
    }
    
    func compareAge(other: Person3) -> Int {
        if self.age > other.age {
            return 1
        }else if self.age < other.age {
            return -1
        }else {
            return 0
        }
    }
    
    func setAge(_age: Int){
        self.age = _age
    }
}

class Student: Person3 {
    var className: String
    
    init(_name: String, _age:Int, _className: String) {
        self.className = _className
        super.init(_name: _name, _age: _age)
    }
    
    override func compareAge(other: Person3) -> Int {
        let res: Int = super.compareAge(other: other)
        if res == 1 {
            print("You are older than \(other.name)")
        }else if res == -1 {
            print("You are younger than \(other.name)")
        }else {
            print("You and \(other.name) have the same age")
        }
        return res
    }
    
    deinit {
        print("\tStudent \(self.name) is destroyed\n")
    }
}

// This class cannot be inherited from
// Thus it's methods cannot be overriden
final class Class {
    var name: String
    
    init(_name: String) {
        self.name = _name
    }
}


func mainClasses() {
    _ = Person3(_name: "William", _age: 25)
    
    let student = Student(_name: "William", _age: 25, _className: "5A")
    let student2 = Student(_name: "John", _age: 30, _className: "5A")
    
    _ = student.compareAge(other: student2)
    
    // Copying class objects
    let student2Copy = student2
    student2Copy.name = "Mike"
    
    print("------------")
    print("After copying student2 into student2Copy and changing the name: ")
    print("Student2 name: \(student2.name)")
    print("Student2Copy name: \(student2Copy.name)")
    
    
    // Creating and destroying student objects
    print("------------")
    print("Creating and destroying student objects")
    for i in 0...3 {
        let stu = Student(_name: "Willima\(i)", _age: 0, _className: "")
        print("\tCreated Stduent \(stu.name)")
    }
    
    
}
mainClasses()
