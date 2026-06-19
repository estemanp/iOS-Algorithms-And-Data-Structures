/*
 -------------------------------------------------------------------------
 Problem: Counting Valleys
 Platform: HackerRank
 Link: https://www.hackerrank.com/challenges/counting-valleys/problem
 
 Description:
 An avid hiker keeps meticulous records of their hikes. Given the sequence of up and down
 steps, find and print the number of valleys walked through.
 
 Complexity: Time: O(N) | Space: O(1)
 -------------------------------------------------------------------------
*/

import Foundation

public func countingValleys(steps: Int, path: String) -> Int {
    var valleysCount = 0
    var levelSea = 0
    
    for step in path {
        levelSea += step == "D" ? -1 : 1
        
        let isComingUpFromValley = step == "U"
        
        if levelSea == 0, isComingUpFromValley {
            valleysCount += 1
        }
    }
    
    return valleysCount
}
