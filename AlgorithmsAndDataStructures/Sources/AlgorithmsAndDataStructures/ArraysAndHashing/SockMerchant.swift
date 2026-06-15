/*
 -------------------------------------------------------------------------
 Problem: Sales by Match (formerly Sock Merchant)
 Platform: HackerRank
 Link: https://www.hackerrank.com/challenges/sock-merchant/problem
 
 Description:
 Given an array of integers representing the color of each sock, determine
 how many pairs of socks with matching colors there are.
 
 Time Complexity: O(N) - Single pass through the array.
 Space Complexity: O(N) - In the worst case, stores all unpaired socks in a Set.
 -------------------------------------------------------------------------
 */

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var unpairedSocks: Set<Int> = []
    var pairs = 0
    
    for color in ar {
        if unpairedSocks.contains(color) {
            pairs += 1
            unpairedSocks.remove(color)
        } else {
            unpairedSocks.insert(color)
        }
    }
    
    return pairs
}
