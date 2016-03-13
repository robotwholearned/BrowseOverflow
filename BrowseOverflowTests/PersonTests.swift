//
//  PersonTests.swift
//  BrowseOverflow
//
//  Created by Sandquist, Cassandra - Cassandra on 3/13/16.
//  Copyright © 2016 robotwholearned. All rights reserved.
//

import XCTest
@testable import BrowseOverflow

class PersonTests: XCTestCase {

    var person: Person?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        person = Person(name: "Graham Lee", avatarURL: "http://example.com/avatar.png")

    }

    func testThatAPersonHasTheRightName() {
        XCTAssertEqual(person!.name, "Graham Lee", "expecting a person to provide its name")
    }

    func testThatPersonHasAnAvatarURL() {
        let url = person!.avatarURL
        XCTAssertEqual(url!.absoluteString, "http://example.com/avatar.png", "The Person's avatar should be represented by a URL")
    }
}