import XCTest
@testable import AlgorithmsAndDataStructures

final class ElectronicsShopTests: XCTestCase {
    
    func test_getMoneySpent_withValidBudget_returnsMaximumSpent() {
        // Arrange
        let budget = 10
        let keyboards = [3, 1]
        let drives = [5, 2, 8]
        
        // Act
        let result = getMoneySpent(keyboards: keyboards, drives: drives, b: budget)
        
        // Assert:
        // 3 + 5 = 8 | 1 + 8 = 9. The maximum cost that does not exceed 10 is 9.
        XCTAssertEqual(result, 9, "Should return 9 as the maximum possible amount spent")
    }
    
    func test_getMoneySpent_withInsufficientBudget_returnsMinusOne() {
        // Arrange
        let budget = 5
        let keyboards = [4]
        let drives = [5]
        
        // Act
        let result = getMoneySpent(keyboards: keyboards, drives: drives, b: budget)
        
        // Assert
        XCTAssertEqual(result, -1, "Should return -1 because the cheapest combination (9) exceeds the budget (5)")
    }
    
    func test_getMoneySpent_withExactBudgetMatch_returnsBudget() {
        // Arrange
        let budget = 60
        let keyboards = [40, 50, 60]
        let drives = [5, 8, 10, 20]
        
        // Act
        let result = getMoneySpent(keyboards: keyboards, drives: drives, b: budget)
        
        // Assert: 40 + 20 = 60 or 50 + 10 = 60.
        XCTAssertEqual(result, 60, "Should return the exact budget amount if there is a perfect combination")
    }
}
