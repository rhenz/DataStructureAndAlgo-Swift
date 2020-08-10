// Copyright (c) 2020 John Salvador

/*:
 ### Stack Challenge
 
 */
import Foundation


/*:
#### Challenge 1:
 Create a function that prints the contents of an array in reversed order
*/

public struct Stack<T> {
    // MARK: - Properties
    private var storage: [T] = []
    
    // MARK: - Init
    public init() {}
    
    public init(_ elements: [T]) {
        storage = elements
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
    
    // MARK: Helper Methods
    public mutating func push(_ element: T) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
        storage.popLast()
    }
    
    public func peek() -> T? {
        return storage.last
    }
    
    /*
     Time complexity of pushing the values into the stack is O(n).
     Time complexity of poppping the values from the stack is O(n).
     
     Since I am reallocating a container inside the function, I also spent a Space Complexity of O(n)
     */
    func printArrayInReverse(_ elements: [T]) {
        var stack = Stack<T>()
        
        for element in elements {
            stack.push(element)
        }
        
        while !stack.isEmpty {
            print(stack.pop()!)
        }
        
        while let element = stack.pop() {
            print(element)
        }
    }
    
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return """
        ---top---
        \(storage.map{"\($0)"}.reversed().joined(separator: "\n"))
        --------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        storage = elements
    }
}



// Reverse an array from stack
example(of: "0). Answer") {
    // Challenge 1
    let array = [1,2,3,4,5]
    let stack = Stack([])
    stack.printArrayInReverse(array)
}

example(of: "1). Reverse Array") {
    var stack: Stack = [1,2,3,4,5]
    var stackReverse = Stack<Int>()
    
    while !stack.isEmpty {
        stackReverse.push(stack.pop()!)
    }
    
    print(stackReverse)
}


example(of: "2). Reverse array") {
    let arrayOfNums = [1,2,3,4,5]
    
    var stack = Stack<Int>()
    for num in arrayOfNums {
        stack.push(num)
    }
    
    print(stack)
}


example(of: "3). Reverse array") {
    // Initialize stack using array literals
    var stack: Stack<Int> = [1,2,3,4,5]
    
    while !stack.isEmpty {
        let poppedElement = stack.pop()
        print(poppedElement ?? 0)
    }
}




/*:
#### Challenge 2:
 Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced.
*/


example(of: "Challenge 2: My Solution") {
    let string = "h((e))llo(world)()"
    var stackOfCharacters = Stack(Array(string))
    var open = 0
    var close = 0
    
    while let char = stackOfCharacters.pop() {
        if char == "(" {
            open += 1
        } else if char == ")" {
            close += 1
        }
    }
    
    if open == close {
        print("Balanced Parentheses")
    } else {
        print("Unbalanced Parentheses")
    }
}

example(of: "Book Solution") {
    func checkParentheses(_ string: String) -> Bool {
        var stack = Stack<Character>()
        
        for char in string {
            if char == "(" {
                stack.push(char)
            } else if char == ")" {
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }
        
        return true
    }
    
    checkParentheses("h((e))llo(world)()")
}
