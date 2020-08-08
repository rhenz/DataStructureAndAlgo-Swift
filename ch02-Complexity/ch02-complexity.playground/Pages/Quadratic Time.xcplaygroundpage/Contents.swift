// Copyright (c) 2020 John Salvador

/*:
 ### Quadratic Time - O(n^2)
is a time complexity algorithm that takes time proportional to the square of the input size. Most commonly referred to as an `n squared`
 */

import UIKit

func printNamesEveryName(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
        print("\n")
    }
}

// My cats 😅
printNamesEveryName(names: myCats)
