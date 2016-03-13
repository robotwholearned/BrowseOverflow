//
//  QuestionTests.swift
//  BrowseOverflow
//
//  Created by Sandquist, Cassandra - Cassandra on 3/13/16.
//  Copyright © 2016 robotwholearned. All rights reserved.
//

import XCTest
@testable import BrowseOverflow

class QuestionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testQuestionHasADate() {
        let question = Question()
        question.date = NSDate.distantPast()
        XCTAssertEqual(question.date, NSDate.distantPast(), "Questions need to provide a date")
    }
    
}
