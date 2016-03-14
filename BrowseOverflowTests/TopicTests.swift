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

    func testThatTopicExists() {
        XCTAssertNotNil(topic, "should be able to create a topic instance")
    }

    func testThatATopicCanBeNamed() {
        XCTAssertNotNil(topic, "should be able to create a topic instance with a name")
    }

    func testThatTopicHasATagAndName() {
        XCTAssertNotNil(topic, "should be able to create a topic instance with a name and tag")
    }

    func testForInitiallyEmptyQuestionsList() {
        let questions = topic?.recentQuestions()
        XCTAssertTrue(questions!.isEmpty, "No questions added yet, count should be zero")
    }

    func testAddingQuestionToList() {
        let q = Question()
        topic!.addQuestion(q)
        let questions = topic?.recentQuestions()
        XCTAssertEqual(questions!.count, 1, "count of questions should go up after adding a question")
    }
    func testQuestionsAreChronological() {
        let q1 = Question()
        let q2 = Question()

        q1.date = NSDate.distantPast()
        q2.date = NSDate.distantFuture()

        topic?.addQuestion(q1)
        topic?.addQuestion(q2)

        let questions = topic!.recentQuestions()
        let listedFirst = questions[0]

        XCTAssertEqual(q2.date, listedFirst.date,
            "The later question should appear first in the list")
    }
}
