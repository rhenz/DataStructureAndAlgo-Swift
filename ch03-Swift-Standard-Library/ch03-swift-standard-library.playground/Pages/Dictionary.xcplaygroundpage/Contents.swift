// Copyright (c) 2020 John Salvador

/*:
 ### Dictionary
 - another generic collection that hold key-value pairs
 - dictionaries are unordered
 */

import Foundation

var scores: [String: Int] = [
    "John": 10,
    "Angela": 9,
    "Chabby": 8
]

// Way to add new element in dictionary as long as the key doesn't exists yet
scores["Nimbus"] = 7 // This creates new Key-Value pair in the dictionary


// Lookup - Constant Time
print(scores["John"]!)
