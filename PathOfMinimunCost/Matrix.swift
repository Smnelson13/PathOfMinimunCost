//
//  Matrix.swift
//  PathOfMinimunCost
//
//  Created by Shane Nelson on 9/20/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

import Foundation



// Model to store the cost inputs in 2D array.

class Matrix {
  
  private(set) var numberOfRows = 0;
  private(set) var numberOfColumns = 0;
  private(set) var costValues:[[Int]]?
  
  //Initialize the private variables
  init(inputCostValues:[[Int]]) {
    costValues = inputCostValues
    calculateRowsAndColumns(for: costValues!)
  }
  
  //Process the inputs for Row and Column calculation
  func calculateRowsAndColumns(for matrix:[[Int]]) {
    numberOfRows = matrix.count;
    if(numberOfRows>0){
      if let firstRow = matrix.first{
        numberOfColumns = firstRow.count
      }
    }
  }
  
}
