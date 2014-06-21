//
//  Topic.swift
//  BrowseOverflow
//
//  Created by Cassandra Sandquist on 2014-06-20.
//  Copyright (c) 2014 Cassandra Sandquist. All rights reserved.
//

import Foundation

class Topic{

  var name = ""
  var tag = ""
  
  init(){
  }
  init(name: String){
    self.name = name
  }
  init(name: String, tag: String){
    self.name = name
    self.tag = tag
  }
}