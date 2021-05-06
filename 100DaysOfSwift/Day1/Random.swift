//
//  Random.swift
//  100DaysOfSwift
//
//  Created by Mahmoud Abdallah on 4/5/21.
//




func printEvenNumbers(from: Int, to: Int) {
    print("Even numbers: ")
    for i in from...to where i.isMultiple(of: 2) {
        print(i)
    }
}

func prinEventNumbers2(from: Int, to:Int){
    print("Printing even numners2:")
    for i in stride(from: to, through: -1, by: -2) {
        print(i)
    }
}

func printList(data: [Any]) {
    print("Printing list: ")
    data.forEach { print($0) }
}

func main() {
//    prinEventNumbers2(from:0, to:10)

    let nums = [1, 2, 3, 4]
    printList(data: nums)
}
