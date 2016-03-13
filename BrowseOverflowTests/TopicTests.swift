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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testThatTopicExists() {
        let topic = Topic()
        XCTAssertNotNil(topic, "should be able to create a topic instance")
    }

    func testThatATopicCanBeNamed() {
        let namedTopic = Topic(name: "iPhone")
        XCTAssertNotNil(namedTopic, "should be able to create a topic instance with a name")
    }
    
}
