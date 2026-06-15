/*
 -------------------------------------------------------------------------
 Problem: Drawing Book
 Platform: HackerRank
 Link: https://www.hackerrank.com/challenges/drawing-book/problem
 
 Description:
 Given a book of `n` pages, find the minimum number of page turns to get
 to page `p`. You can start turning pages from the front (page 1) or the
 back (page n). Page 1 is always on the right side.
 
 Time Complexity: O(1) - Constant time mathematical calculation.
 Space Complexity: O(1) - No extra memory required.
 -------------------------------------------------------------------------
 */

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    let frontPageCount = p / 2
    let backPageCount = (n / 2) - frontPageCount
    return min(frontPageCount, backPageCount)
}
