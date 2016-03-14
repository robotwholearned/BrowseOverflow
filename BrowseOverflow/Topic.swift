//
//  Topic.swift
//  BrowseOverflow
//
//  Created by Sandquist, Cassandra - Cassandra on 3/13/16.
//  Copyright © 2016 robotwholearned. All rights reserved.
//

import Foundation

class Topic: NSObject {
    var name: String
    var tag: String
    var questions: [Question]

    init(name: String, tag: String) {
        self.name = name
        self.tag = tag
        questions = [Question]()
    }

    func recentQuestions() -> Array<Question> {
        let sortedQuestions = questions.sort({ (obj1, obj2) -> Bool in
            return obj2.date!.compare(obj1.date!) == NSComparisonResult.OrderedAscending ? true : false
        })

        if sortedQuestions.count < 21 {
            return sortedQuestions
        } else {
            let arraySlice = sortedQuestions[0..<20]
            let newArray = Array(arraySlice)
            return newArray
        }
    }

    func addQuestion(questionToAdd: Question) {
        questions.append(questionToAdd)
    }
}