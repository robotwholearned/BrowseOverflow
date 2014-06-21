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
    XCTAssertEqualObjects(newTopic.name, "iPhone", "should be able to name a topic")
  }
  func testThatTopicHasATag(){
    XCTAssertEqualObjects(newTopic.tag, "iphone", "topics should have tags")
  }
  //'is' test is always true, because of type saftey in Swift *yay!
//  func testForAListOfQuestions(){
//    XCTAssertTrue(newTopic.recentQuestions is Array, "Topics should provide a list of recent questions")
//  }
}
