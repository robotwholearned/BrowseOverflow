//
//  TopicTests.swift
//  BrowseOverflow
//
//  Created by Sandquist, Cassandra - Cassandra on 3/13/16.
//  Copyright © 2016 robotwholearned. All rights reserved.
//

import XCTest
@testable import BrowseOverflow

class TopicTests: XCTestCase {

    var topic: Topic?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        topic = Topic(name: "iPhone", tag: "iphone")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        topic = nil
    }

    func testThatTopicExists() {
        XCTAssertNotNil(topic, "should be able to create a topic instance")
    }

    func testThatATopicCanBeNamed() {
        XCTAssertNotNil(topic, "should be able to create a topic instance with a name")
    }

    func testThatTopicHasATagAndName() {
        XCTAssertNotNil(topic, "should be able to create a topic instance with a name and tag")
    }

    func testForAListOfQuestions() {
        let recentQuestions = topic!.recentQuestions()
        XCTAssertFalse(recentQuestions.isEmpty, "Topics should provide a list of recent questions")
    }
    
}
