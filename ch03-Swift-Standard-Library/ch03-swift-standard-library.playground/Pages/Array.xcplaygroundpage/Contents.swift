// Copyright (c) 2020 John Salvador

/*:
 ### Array
 is a data structure consisting of a collection of elements (values or variables), each identified by at least one array index or key
 */

import Foundation

// Create an array
var myCats = ["Oli", "Nimbus", "Chabby"]

// Access
// constant time
myCats[0] // Oli
myCats[1] // Nimbus
myCats[2] // Chabby

// Append
// constant time.
myCats.append("Golden BSH-soon")

// Insert
// linear time
// If inserting elements in front of your collection is a common operation, you may want to consider using a different data structure to hold your data
myCats.insert("AnnoyingRudeCat", at: 0)



