// Copyright (c) 2020 John Salvador

/*:
 ## Array
 is a data structure consisting of a collection of elements (values or variables), each identified by at least one array index or key
 */

import UIKit

var myCats = ["Oli", "Nimbus", "Chabby"]

// Constant Time
myCats[0] // Oli
myCats[1] // Nimbus
myCats[2] // Chabby

// Append
myCats.append("Golden BSH-soon") // the time complexity is Constant Time
print(myCats) // prints ["Oli", "Nimbus", "Chabby", "Golden BSH-soon"]

// Insert
myCats.insert("AnnoyingRude Cat", at: 0) // the time complexity is O(n)


