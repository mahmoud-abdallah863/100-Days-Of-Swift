////
////  main.swift
////  100DaysOfSwift
////
////  Created by Mahmoud Abdallah on 4/7/21.
////
//
//
//
//
///**
//    Lists
// */
//
//
//var numbers = [Int](repeating:0, count:1)
//
//print(numbers)
//numbers.append(1)
//numbers += [2]
//
////print("Printing numbers: ")
////for (i, num) in numbers.enumerated() {
////    print("Number[\(i)] = \(num)")
////}
//
//numbers.append(contentsOf: [3, 4, 5])
//numbers += [6, 7, 8]
//
//print("Numbers = \(numbers)")
//
//print("numbers contain 1: \(numbers.contains(1))")
//print("numbers contain 10: \(numbers.contains(10))")
//
//let element_0 = numbers.remove(at: 0)
//print("numbers after removing element at index 0: \(numbers) | returned: \(element_0)")
//
//let first_element = numbers.removeFirst()
//print("numbers after removing the first element: \(numbers) | returned: \(first_element)")
//
//let last_element = numbers.removeLast()
//print("numbers after removing the last element: \(numbers) | returned: \(last_element)")
//
//
//let first_2_elements: () = numbers.removeFirst(2)
//print("numbers after removing first 2 elements: \(numbers) | returned: \(first_2_elements)")
//
//var capacity = numbers.capacity
//print("numbers capacity = \(capacity)")
//
//numbers += [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10, 11, 12, 13, 14, 15, 16, 17, 18]
//print(numbers)
//
//capacity = numbers.capacity
//print("new capacity = \(capacity)")
//
////print("Numbers list is empty = \(numbers.isEmpty)")
//
////func addNumbers(n: Int,nums: [Int]) {
////    return nums.append(n)
////}
//
