//
//  Topic.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import Foundation

class Topic{
  var name: String
  var tag: String
  var questions: Array <Question> = []
  
  init(name: String, tag: String){
    self.name = name
    self.tag = tag
  }
  
  func addQuestion(questionToAdd: Question){
    questions += questionToAdd
  }
  
  func sortQuestions(q1: Question, q2: Question) -> Bool {
    return q1.date.timeIntervalSinceReferenceDate > q2.date.timeIntervalSinceReferenceDate
  }

  var recentQuestions: Array<Question>{
    get{
      // either return the first 20 q's always or remove the 21st if too many get added
      var sortedQuestions = sort(self.questions, sortQuestions)
      if sortedQuestions.count >= 21{
        sortedQuestions = Array(sortedQuestions[0...19])
      }
      return sortedQuestions
    }
  }
}