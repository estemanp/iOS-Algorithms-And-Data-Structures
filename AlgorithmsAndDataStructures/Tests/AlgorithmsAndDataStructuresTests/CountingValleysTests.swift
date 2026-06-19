import XCTest
@testable import AlgorithmsAndDataStructures

final class CountingValleysTests: XCTestCase {
    
    func test_countingValleys_withBaseHackerRankCase_returnsOne() {
        // Arrange
        let steps = 8
        let path = "UDDDUDUU"
        
        // Act
        let result = countingValleys(steps: steps, path: path)
        
        // Assert
        XCTAssertEqual(result, 1, "Should count exactly 1 valley for the path UDDDUDUU")
    }
    
    func test_countingValleys_withMultipleValleys_returnsCorrectCount() {
        // Arrange
        let steps = 12
        let path = "DDUUDDUDUUUD"
        
        // Act
        let result = countingValleys(steps: steps, path: path)
        
        // Assert
        XCTAssertEqual(result, 2, "Should count exactly 2 valleys")
    }
    
    func test_countingValleys_withOnlyMountains_returnsZero() {
        // Arrange
        let steps = 4
        let path = "UUUUDDDD"
        
        // Act
        let result = countingValleys(steps: steps, path: path)
        
        // Assert
        XCTAssertEqual(result, 0, "Should count 0 valleys since the hiker only went up a mountain")
    }
    
    func test_countingValleys_withImmediateValley_returnsOne() {
        // Arrange
        let steps = 2
        let path = "DU"
        
        // Act
        let result = countingValleys(steps: steps, path: path)
        
        // Assert
        XCTAssertEqual(result, 1, "Should count 1 valley for a quick down and up step")
    }
    
    func test_countingValleys_withFourValleysAndFourMountains_returnsFour() {
        // Arrange
        let steps = 24
        // Path breakdown:
        // M1(UD) -> V1(DU) -> M2(UUDD) -> V2(DDUU) -> M3(UD) -> V3(DU) -> M4(UUDD) -> V4(DDUU)
        let path = "UDDUUUDDDDUUUDDUUUDDDDUU"
        
        // Act
        let result = countingValleys(steps: steps, path: path)
        
        // Assert
        XCTAssertEqual(result, 4, "Should count exactly 4 valleys in an alternating landscape of 4 mountains and 4 valleys")
    }
}
