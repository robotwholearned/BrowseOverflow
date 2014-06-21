//
//  TopicTests.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import XCTest

class TopicTests: XCTestCase {
  
  func testTopicExists(){
    var newTopic = Topic(name: "iPhone", tag: "iphone")
    XCTAssertNotNil(newTopic, "Should be able to create a Topic instance")
  }
  
  func testThatATopicCanBeNamed(){
    var newTopic = Topic(name: "iPhone", tag: "iphone")
    XCTAssertEqualObjects(newTopic.name, "iPhone", "should be able to name a topic")
  }
  func testThatTopicHasATag(){
    var newTopic = Topic(name: "iPhone", tag: "iphone")
    XCTAssertEqualObjects(newTopic.tag, "iphone", "topics should have tags")
  }
}
