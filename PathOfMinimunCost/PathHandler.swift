//
//  PathHandler.swift
//  PathOfMinimunCost
//
//  Created by Shane Nelson on 9/20/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

import Foundation



// Groups and compare the paths and stores the least cost Path

struct PathHandler {
  
  private(set) var leastCostPath:Path?
  
  //Adds path for leastCost comparison
  mutating func addPath(pathTraversed:Path) {
    if leastCostPath == nil{
      leastCostPath = pathTraversed;
      return
    }
    
    if (pathTraversed < leastCostPath!) {
      leastCostPath = pathTraversed;
    }
  }
}
