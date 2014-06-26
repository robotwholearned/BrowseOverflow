//
//  Answer.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-26.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import Foundation

class Answer{
  var text : String
  var person: Person
  var score: Int
  var accepted: Bool
  
  init(text: String, score: Int, person:Person){
    self.text = text
    self.score = score
    self.accepted = false
    self.person = person
  }
}