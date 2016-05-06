//
//  TempConverterTests.swift
//  TempConverterTests
//

import XCTest
@testable import TempConverter

class TempConverterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCelsiusToFahrenheit() {
        // arrange
        let temp = Temperature(scale:.C, value:100.0)
        let c = TempConverter()
        
        // act
        let result = c.convert(temp, toScale: .F)
        
        // assert
        XCTAssertEqualWithAccuracy(result.value, 212.0, accuracy: 0.1)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}















































