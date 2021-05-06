//
//  sets.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 4/7/21.
//

func setsMain() {
    
    /**
                Notes:
            Values order in the set may change every execution time
     */
    
    // How to create empty set
    let emptySet = Set<Int>()
    print("Empty set capacity = \(emptySet.capacity)")
    
    
    // Check if set is empty
    print("Is empty set <emptySet> = \(emptySet.isEmpty)")

    
    var nums = Set([1, 2, 3, 4])

    print("nums = \(nums)")

    nums.insert(5)
    print("nums = \(nums)")

    // Capacity: The total number of elements that the set can contain without allocating new storage.
    //          values: 0, 1, 3, 6, 12, ... (multiple of 3)
    print("capacity = \(nums.capacity) | count = \(nums.count)")

    let first_element = nums.popFirst() ?? 1
    print("first element = \(first_element)")
    
    print("numbers after removing the first element=  \(nums)")
    
    // Remove will return nil if element does not exists
    let x = nums.remove(1)
    print("Removed element: \(String(describing: x))")
    print("nums after removing element \(String(describing: x)): \(nums)")
    
    
    // Check if element exists in set
    var exists = nums.contains(3)
    print("Number 3 exists in nums: \(exists)")
    
    exists = nums.contains(10)
    print("Number 10 exists in nums: \(exists)")
    
    
    print("Sorted set = \(nums.sorted())")
    
    
    // Sum the elements in set
    let sumElement = nums.reduce(0, +)
    print("nums: \(nums)")
    print("Sum of elements in nums: \(sumElement)")
    
    

    
}
setsMain()
