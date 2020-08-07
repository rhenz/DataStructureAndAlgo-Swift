// Copyright (c) 2020 John Salvador

/*:
 ### Space Complexity
 is a measure of the resources required for the algorithm to run.
 */

import UIKit

func printNamesInSorted(names: [String]) {
    let sortedArray = names.sorted() // Created new sorted copy of the array, space complexity is O(n)
    for name in sortedArray {
        print(name)
    }
}

printNamesInSorted(names: myCats)
