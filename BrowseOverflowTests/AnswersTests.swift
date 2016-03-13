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
  
  var answer = Answer(text: "The answer is 42", score: 42, person: Person(name:"Cassandra Sandquist ", avatarLocation: "https://www.gravatar.com/avatar/4859f078c642a60853c3d2752cbfee4f?s=128&d=identicon&r=PG"))
  var otherAnswer = Answer(text: "I have the answer you need", score: 42, person: Person(name:"Anon Y Mous", avatarLocation: "https://www.gravatar.com/avatar/4859f078c642a60853c3d2752cbfee4f?s=128&d=identicon&r=PG"))
  
  func testAnswerHasSomeText(){
    XCTAssertEqual(answer.text, "The answer is 42", "Answers need to contain some text")
  }
  
  func testThatSomeoneProvidedTheAnswer(){
    //compares that the two names are the same, because typing is not relavant to compare in swift
    XCTAssertEqual(answer.person.name, person.name, "A person gave this answer")
  }
  
  func testAnswersNotAcceptedByDefault(){
    XCTAssertFalse(answer.accepted, "Answer not accepted by default")
  }
  
  func testAnswerCanBeAccepted(){
    answer.accepted = true
    XCTAssertTrue(answer.accepted, "Answer can be accepted")
  }
  
  func testAnswerHasAScore(){
    XCTAssertTrue(answer.score == 42, "Answer's score can be retrieved")
  }
  
  func testAccpetedAnswerComesFirst(){
    otherAnswer.accepted = true
    otherAnswer.score = answer.score + 10
    
    //XCTAssertEqual(otherAnswer.compare(answer), NSComparisonResult.OrderedAscending, "non-Accepted answer should come last")
    
    //XCTAssertEqual(answer.compare(otherAnswer), NSComparisonResult.OrderedDescending, "Accepted answer should come first")
    
    
  }
  
  
  
  
  
}
