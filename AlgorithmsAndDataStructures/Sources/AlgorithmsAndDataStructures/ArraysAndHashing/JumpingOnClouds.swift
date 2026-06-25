/*
 -------------------------------------------------------------------------
 Problem: Jumping on the Clouds
 Platform: HackerRank
 Link: https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem
 
 Description:
 Given an array of binary integers representing clouds (0 = safe, 1 = avoid),
 find the minimum number of jumps to reach the end. A jump can be 1 or 2 steps.
 
 Time Complexity: O(N) - Single pass through the array using a while loop.
 Space Complexity: O(1) - Constant memory.
 
 Author: Andres Perez
 -------------------------------------------------------------------------
 */

import Foundation

public func jumpingOnClouds(c: [Int]) -> Int {
    var jumps = 0
    var index = 0
    
    while index < c.count - 1 {
        
        if index + 2 < c.count, c[index + 2] == 0 {
            index += 2
        } else {
            index += 1
        }
        
        jumps += 1
    }
    
    return jumps
}
