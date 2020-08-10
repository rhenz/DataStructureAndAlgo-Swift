// Copyright (c) 2020 John Salvador

/*:
 ### Stack Data Structure
 
 The stack data structure is identical, in concept, to a physical stack of objects
 
 When you add item to a stack, you place it on the top of the stack
 
 When you remove item to a stack, you always remove the top-most item
 
 push() and pop() is constant time complexity - O(1)
 
 */

import UIKit

public struct Stack<Element> {
    private var storage: [Element] = []
    public init() {}
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    // MARK: - Helper Methods
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    // Non-essential operations
    public func peek() -> Element? {
        return storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return """
        ---top---
        \(storage.map{ "\($0)" }.reversed().joined(separator: "\n"))
        ---------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}


example(of: "Using a stack") {
//    var stack = Stack<Int>()
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    if let poppedElement = stack.pop() {
//        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")
    }
    
    if let poppedElement = stack.pop() {
//        assert(2 == poppedElement)
        print("Popped: \(poppedElement)")
    }
    
    print("\n")
    print(stack)
}


example(of: "initializing a stack from an array") {
    let array = ["A", "B", "C", "D"]
    var stack = Stack(array)
    print(stack)
    stack.pop()
    print(stack)
}


example(of: "initializing a stack from array literal") {
    var stack: Stack = ["What", "The", "Bird"]
    print(stack)
    stack.pop()
    print(stack)
}
