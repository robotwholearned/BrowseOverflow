//
//  Person.swift
//  BrowseOverflow
//
//  Created by Sandquist, Cassandra - Cassandra on 3/13/16.
//  Copyright © 2016 robotwholearned. All rights reserved.
//

import Foundation

class Person {
    
    var name: String?
    var avatarURL: NSURL?

    init(name: String, avatarURL: String) {
        self.name = name
        self.avatarURL = NSURL(string: avatarURL)

    }
}

