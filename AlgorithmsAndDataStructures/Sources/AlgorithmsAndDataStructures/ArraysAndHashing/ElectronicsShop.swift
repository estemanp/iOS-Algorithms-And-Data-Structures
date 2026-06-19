/*
 -------------------------------------------------------------------------
 Problem: Electronics Shop
 Platform: HackerRank
 Link: https://www.hackerrank.com/challenges/electronics-shop/problem
 
 Description:
 Given a budget `b`, and two arrays of prices for keyboards and USB drives,
 find the maximum amount of money that can be spent buying exactly one
 item from each list. If it's not possible, return -1.
 
 Time Complexity: O(N * M) - Where N is keyboards count and M is drives count.
 Space Complexity: O(1) - Constant memory used.
  -------------------------------------------------------------------------
 */

import Foundation

public func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var mostExpensive = -1
    
    for keyboard in keyboards {
        if keyboard < b {
            let remainingBudget = b - keyboard
            
            for drive in drives {
                if drive <= remainingBudget {
                    let currentCost = keyboard + drive
                    
                    if currentCost > mostExpensive {
                        mostExpensive = currentCost
                    }
                }
            }
        }
    }
    
    return mostExpensive
}
