//
//  TempConverterTests.swift
//  TempConverterTests
//
//  Created by Jeff Gelina on 12/15/14.
//  Copyright (c) 2014 Jeff Gelina. All rights reserved.
//

import UIKit
import XCTest

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
        let c = 100.0
        let converter = MyConverter()
        converter.temperature = c
        converter.temperatureScale = (.C)
        let f = converter.convert(.F)
        XCTAssert(f == 212.0, "Pass")
    }
    

    func testFahrenheitToCelsius() {
        let f = 212.0
        let converter = MyConverter()
        converter.temperature = f
        converter.temperatureScale = (.F)
        let c = converter.convertToCelsius(f)
        XCTAssert(c == 100.0, "Pass")
    }
        

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
