//
//  MockDependencyInjectionTests.swift
//  MockDependencyInjectionTests
//
//  Created by Dylan on 9/5/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import XCTest
@testable import MockDependencyInjection

class MockDependencyInjectionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    let mockedDatabase = MockDatabaseThingie()
    
    func testWithDependencyInjection() {
        // Inject a mocked database into example object.
        let example = ExampleDependencyInjection(useThisDatabaseInstead: mockedDatabase)
        example.doStuff()
        XCTAssert(mockedDatabase.getDataFunctionWasCalled, "getData function didn't excute.")
    }

    func testWithoutDependencyInjeciton() {
        let example = ExampleDependencyNonInjection()
        example.doStuff()
        XCTAssertNotNil(example.myDatabase.data, "Database has no value.")
    }
}
