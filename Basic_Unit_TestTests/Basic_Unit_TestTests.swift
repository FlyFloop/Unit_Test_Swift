//
//  Basic_Unit_TestTests.swift
//  Basic_Unit_TestTests
//
//  Created by Alper Yorgun on 12.03.2023.
//

import XCTest
@testable import Basic_Unit_Test

final class Basic_Unit_TestTests: XCTestCase {
    
    var valid : Validation!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
         valid = Validation()
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        valid = nil
        try super.tearDownWithError()
    }
    
    


    func testUserNameTooShortTest() throws {
        XCTAssertThrowsError(try valid.validateUserName(userName: "a"))
    }
    
    func testUserNameUpperCased() throws {
        XCTAssertThrowsError(try valid.validateUserName(userName: "Test"))
    }
    
    func testUserName() throws{
        XCTAssertThrowsError(try valid.validateUserName(userName: ""))

    }
    
    func testUserNameNumber() throws {
        XCTAssertThrowsError(try valid.validateUserName(userName: "test123"))
    }
    
    func testUserNameTooLong() throws {
        XCTAssertNoThrow(try valid.validateUserName(userName: "test"))
    }


}
