import XCTest

@testable import AlgorithmsAndDataStructures

final class SockMerchantTests: XCTestCase {
    
    func testSockMerchant_WithSampleInput() {
        let n = 9
        let ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
        let result = sockMerchant(n: n, ar: ar)
        XCTAssertEqual(result, 3, "Should find 3 pairs (two 10s and one 20)")
    }
    
    func testSockMerchant_WithAllMatchingSocks() {
        let n = 6
        let ar = [1, 1, 1, 1, 1, 1]
        let result = sockMerchant(n: n, ar: ar)
        XCTAssertEqual(result, 3, "Should find 3 pairs with identical socks")
    }
    
    func testSockMerchant_WithNoPairs() {
        let n = 4
        let ar = [1, 2, 3, 4]
        let result = sockMerchant(n: n, ar: ar)
        XCTAssertEqual(result, 0, "Should find 0 pairs if all socks are different")
    }
}
