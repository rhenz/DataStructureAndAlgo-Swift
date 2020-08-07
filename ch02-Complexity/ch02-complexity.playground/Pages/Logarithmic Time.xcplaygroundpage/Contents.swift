// Copyright (c) 2020 John Salvador

/*:
 ### Logarithmic Time - O(log n)
 as the input data increases, the time it takes to execute the algorithm increases at a slow rate
 */
import Foundation

// Binary Search
func findIndexInSortedArray(nums: [Int], n: Int) -> Int? {
    guard !nums.isEmpty else { return nil }

    var left = 0
    var right = nums.count-1
    
    while left <= right {
        let middle = (left+right) / 2
        if nums[middle] == n {
            return middle
        } else if nums[middle] < n {
            left = middle+1
        } else {
            right = middle-1
        }
    }
    
    return nil
}

findIndexInSortedArray(nums: [1,3,5,7,8,10], n: 8)


