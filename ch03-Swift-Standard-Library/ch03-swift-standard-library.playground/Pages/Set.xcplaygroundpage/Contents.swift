// Copyright (c) 2020 John Salvador

/*:
 ### Set
 - container that holds unique value. Basically you can't have duplicates in a Set
 */

import Foundation

var cats: Set<String> = ["Chabby", "Oli", "Nimbus"]
cats.insert("Chabby") // This will fail because Chabby exists in the set already
print(cats)



let values: [String] = []
var bag: Set<String> = []

for value in values {
    if bag.contains(value) {
        // No need to add
    }
    
    // Add to the bag
    bag.insert(value)
}
