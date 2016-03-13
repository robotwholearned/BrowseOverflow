//
//  Topic.swift
//  BrowseOverflow
//
//  Created by Sandquist, Cassandra - Cassandra on 3/13/16.
//  Copyright © 2016 robotwholearned. All rights reserved.
//

import Foundation

class Topic: NSObject {
    var name: String?

    convenience override init() {
        self.init(name: "empty topic name")
    }

    init(name: String) {
        self.name = name
    }
}
