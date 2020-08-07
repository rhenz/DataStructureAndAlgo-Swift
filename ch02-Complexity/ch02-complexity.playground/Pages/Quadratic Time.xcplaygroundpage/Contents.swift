// Copyright (c) 2020 John Salvador

/*:
 ### Quadratic Time - O(n^2)
 an algorithm whereas the
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
