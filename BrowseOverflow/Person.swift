//
//  Person.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import Foundation

class Person{
  var name : String
  var avatarLocation : NSURL
  
  init(name: String, avatarLocation: String){
    self.name = name
    self.avatarLocation = NSURL(string: avatarLocation)!
  }
  
}