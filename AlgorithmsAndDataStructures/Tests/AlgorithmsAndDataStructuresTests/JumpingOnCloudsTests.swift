//
//  JumpingOnCloudsTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Andres Esteban Perez Ramirez on 24/06/26.
//

import XCTest
@testable import AlgorithmsAndDataStructures

final class JumpingOnCloudsTests: XCTestCase {
    
    func test_jumpingOnClouds_withHackerRankSampleZero_returnsFour() {
        // Arrange
        let clouds = [0, 0, 1, 0, 0, 1, 0]
        
        // Act
        let result = jumpingOnClouds(c: clouds)
        
        // Assert
        XCTAssertEqual(result, 4, "Should reach the end in exactly 4 jumps")
    }
    
    func test_jumpingOnClouds_withHackerRankSampleOne_returnsThree() {
        // Arrange
        let clouds = [0, 0, 0, 0, 1, 0]
        
        // Act
        let result = jumpingOnClouds(c: clouds)
        
        // Assert
        XCTAssertEqual(result, 3, "Should avoid the thunderhead and finish in 3 jumps")
    }
    
    func test_jumpingOnClouds_withAllSafeClouds_returnsMinimumJumps() {
        // Arrange
        let clouds = [0, 0, 0, 0, 0, 0] // 6 safe clouds
        
        // Act
        let result = jumpingOnClouds(c: clouds)
        
        // Assert: index jumps (0 -> 2 -> 4 -> 5)
        XCTAssertEqual(result, 3, "Should take maximum advantage of double jumps")
    }
}
