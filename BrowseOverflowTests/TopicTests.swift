//
//  TopicTests.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import XCTest

class TopicTests: XCTestCase {
  var newTopic = Topic(name: "iPhone", tag: "iphone")
  func testTopicExists(){
    XCTAssertNotNil(newTopic, "Should be able to create a Topic instance")
  }
  func testThatATopicCanBeNamed(){
    XCTAssertEqual(newTopic.name, "iPhone", "should be able to name a topic")
  }
  func testThatTopicHasATag(){
    XCTAssertEqual(newTopic.tag, "iphone", "topics should have tags")
  }
  func testForInitiallyEmptyQuestionList(){
    XCTAssertEqual(newTopic.recentQuestions.count, 0, "No questions added yet, count should be 0")
  }
  func testAddingQuestionsToTheList(){
    let question = Question()
    newTopic.addQuestion(question)
    XCTAssertEqual(newTopic.recentQuestions.count, 1, "Add a question, and the count of questions should go up")
  }
  func testQuestionsAreListedChronologically(){
    let q1 = Question()
    let q2 = Question()
    
    q1.date = NSDate(timeIntervalSince1970: 10)
    q2.date = NSDate(timeIntervalSinceNow: 1000)
    
    newTopic.addQuestion(q1)
    newTopic.addQuestion(q2)
    
    XCTAssertEqual(newTopic.recentQuestions[0].date, q2.date, "Later date should appear first in the list")
    
  }
  func testLimitOFTwentyQuestions(){
    let q1 = Question()

    for _ in 0...25{
      self.newTopic.addQuestion(q1)
    }
    XCTAssertTrue((newTopic.recentQuestions.count < 21), "There should never be more than 20 questions")
  }
}
