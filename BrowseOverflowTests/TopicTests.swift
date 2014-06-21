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
}
