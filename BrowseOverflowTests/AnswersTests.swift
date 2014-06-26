//
//  AnswersTests.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-26.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import XCTest

class AnswersTests: XCTestCase {
  var person = Person(name:"Cassandra Sandquist ", avatarLocation: "https://www.gravatar.com/avatar/4859f078c642a60853c3d2752cbfee4f?s=128&d=identicon&r=PG")
  
  var answer = Answer(text: "The answer is 42", person: Person(name:"Cassandra Sandquist ", avatarLocation: "https://www.gravatar.com/avatar/4859f078c642a60853c3d2752cbfee4f?s=128&d=identicon&r=PG") , score: 42)
  
  func testAnswerHasSomeText(){
    XCTAssertEqualObjects(answer.text, "The answer is 42", "Answers need to contain some text")
  }
  
  func testThatSomeoneProvidedTheAnswer(){
    //compares that the two names are the same
    XCTAssertEqualObjects(self.answer.person.name, self.person.name, "A person gave this answer")
  }
  
  func testAnswersNotAcceptedByDefault(){
    XCTAssertFalse(self.answer.accepted, "Answer not accepted by default")
  }
  
  func testAnswerCanBeAccepted(){
    self.answer.accepted = true
    XCTAssertTrue(self.answer.accepted, "Answer can be accepted")
  }
  
  func testAnswerHasAScore(){
    XCTAssertTrue(self.answer.score == 42, "Answer's score can be retrieved")
  }
  
}
