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

    var question: Question?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        question = Question()
        question?.date = NSDate.distantPast()
        question?.score = 42
        question?.title = "Do iPhones also dream of electric sheep?"
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testQuestionHasADate() {

        question!.date = NSDate.distantPast()
        XCTAssertEqual(question!.date, NSDate.distantPast(), "Questions need to provide a date")
    }

    func testQuestionHasATitle() {
        XCTAssertEqual(question!.title, "Do iPhones also dream of electric sheep?", "Questions need to provide a title")
    }

    func questionHasAScore() {
        XCTAssertEqual(question!.score, 42, "Questions need to provide a title")
    }
    
}
