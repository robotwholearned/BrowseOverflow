//
//  QuestionTests.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import XCTest

class QuestionTests: XCTestCase {
  
  var question = Question()
  var testDate = NSDate(timeIntervalSince1970: 0)
  
  override func setUp() {
    super.setUp()
    question.date = testDate
    question.title = "Do iPhones also dream of electric sheep?"
    question.score = 42
  }

  func testQuestionHasDate(){
    XCTAssertEqualObjects(question.date, testDate, "Questions needs to provide a date")
  }
  
  func testQuestionKeepsScore(){
    XCTAssertEqual(question.score, 42, "Question needs a score")
  }
  func testQuestionHasATitle(){
    XCTAssertEqual(question.title, "Do iPhones also dream of electric sheep?", "Questions need a title")
  }
}
