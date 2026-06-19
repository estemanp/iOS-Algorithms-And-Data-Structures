import XCTest
@testable import AlgorithmsAndDataStructures

final class DrawingBookTests: XCTestCase {
    
    // MARK: - HackerRank Sample Cases
    
    func testPageCount_SampleZero() {
        // Explanation: n=6, p=2.
        // From the front: 1 turn (pages 2-3). From the back: 2 turns. Minimum: 1.
        XCTAssertEqual(pageCount(n: 6, p: 2), 1, "Failed on base sample 0")
    }
    
    func testPageCount_SampleOne() {
        // Explanation: n=5, p=4.
        // From the front: 2 turns. From the back: 0 turns (book opens at 4-5). Minimum: 0.
        XCTAssertEqual(pageCount(n: 5, p: 4), 0, "Failed on base sample 1")
    }
    
    // MARK: - Edge Cases
    
    func testPageCount_TrickyEvenEnd() {
        // The tricky edge case we discussed: n=6, p=5.
        // Direct subtraction (6-5)/2 yields 0. But the correct formula (n/2) - (p/2) yields 1.
        XCTAssertEqual(pageCount(n: 6, p: 5), 1, "Should take 1 turn from the back in even-paged books when looking for the previous odd page")
    }
    
    func testPageCount_FirstPage() {
        // Reaching page 1 always takes 0 turns because the book is already open there initially.
        XCTAssertEqual(pageCount(n: 10, p: 1), 0, "Turning to the first page should always take 0 turns")
    }
    
    func testPageCount_LastPage() {
        // Reaching the last page starting from the back is always 0 turns.
        XCTAssertEqual(pageCount(n: 10, p: 10), 0, "Turning to the last even page from the back should be 0")
        XCTAssertEqual(pageCount(n: 11, p: 11), 0, "Turning to the last odd page from the back should be 0")
    }
}
