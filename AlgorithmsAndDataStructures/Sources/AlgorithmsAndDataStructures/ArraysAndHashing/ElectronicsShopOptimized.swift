/*
 -------------------------------------------------------------------------
 Problem: Electronics Shop (Optimized Two Pointers Approach)
 Platform: HackerRank
 Link: https://www.hackerrank.com/challenges/electronics-shop/problem
 
 Description:
 Finds the maximum amount of money that can be spent using a Two Pointers
 approach on sorted arrays. This approach is highly scalable for massive
 datasets where an O(N * M) nested loop would result in a Time Out.
 
 Time Complexity: O(N log N + M log M) - Dominated by the sorting algorithms.
 Space Complexity: O(N + M) or O(1) depending on the sorting implementation.
 
 Author: Andres Perez
 -------------------------------------------------------------------------
 */

import Foundation

public func getMoneySpentOptimized(keyboards: [Int], drives: [Int], b: Int) -> Int {
    let sortedKeyboards = keyboards.sorted()
    let sortedDrives = drives.sorted()
    
    var mostExpensive = -1
    
    var i = 0
    var j = sortedDrives.count - 1
    
    while i < sortedKeyboards.count && j >= 0 {
        let currentCost = sortedKeyboards[i] + sortedDrives[j]
        
        if currentCost > b {
            j -= 1
        } else {
            if currentCost > mostExpensive {
                mostExpensive = currentCost
            }
            i += 1
        }
    }
    
    return mostExpensive
}
