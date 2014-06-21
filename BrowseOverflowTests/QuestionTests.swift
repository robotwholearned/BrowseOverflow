//
//  QuestionTests.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import XCTest

class QuestionTests: XCTestCase {

  func testQuestionHasDate(){
    var question = Question()
    var testDate = NSDate(timeIntervalSince1970: 0)
    question.date = testDate
    XCTAssertEqualObjects(question.date, testDate, "Questions needs to provide a date")
  }

}
