//
//  PersonTests.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import XCTest

class PersonTests: XCTestCase {
  
  var person = Person(name:"Cassandra Sandquist ", avatarLocation: "https://www.gravatar.com/avatar/4859f078c642a60853c3d2752cbfee4f?s=128&d=identicon&r=PG")

  
  func testThatPersonHasTheRightName(){
    XCTAssertEqualObjects(person.name, "Cassandra Sandquist ", "person needs a name")
  }
  func testThatPersonHasAnAvatarURL(){
    XCTAssertEqualObjects(person.avatarLocation.absoluteString, "https://www.gravatar.com/avatar/4859f078c642a60853c3d2752cbfee4f?s=128&d=identicon&r=PG", "The persons avatar should be represented by an url")
  }
  
}
