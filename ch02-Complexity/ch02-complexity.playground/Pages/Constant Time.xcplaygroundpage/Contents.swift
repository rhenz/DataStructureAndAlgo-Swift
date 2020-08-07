// Copyright (c) 2020 John Salvador

/*:
 
 ## Time Complexity
 is a measure of the time required to run an algorithm as the input size increases
 
 
 ### Constant Time - O(1)
 an algorithm that has the same running time regardless of the size of ther input
 
 ### Big O Notation
 used to represent various magnitudes of time complexity
 */

import UIKit

func printFirstName(names: [String]) {
    if let firstName = names.first {
        print(firstName)
    } else {
        print("No name")
    }
}

printFirstName(names: myCats)

