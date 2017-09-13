//
//  ViewController.swift
//  PathOfMinimunCost
//
//  Created by Shane Nelson on 9/3/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate
{
  
  @IBOutlet weak var pathExists: UILabel!
  @IBOutlet weak var lowestCostLabel: UILabel!
  @IBOutlet weak var lowestCostPath: UILabel!
  @IBOutlet weak var inputArea: UITextView!
  
  var textfield:UITextField!

  override func viewDidLoad()
  {
    super.viewDidLoad()
    inputArea.endEditing(true)
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
   
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    self.view.endEditing(true)
  }
  
  // Sample sets
  @IBAction func loadSampleset1(_ sender: Any)
  {
    inputArea.text = inputCost
  }

  @IBAction func loadSampeset2(_ sender: Any)
  {
    inputArea.text = inputCost2
  }
 
  @IBAction func loadSampleset3(_ sender: Any)
  {
    inputArea.text = inputCost3
  }

  // submit button tapped
  @IBAction func submit(_ sender: Any)
  {
    resetOutputLabels()
    
    let inputValidationResults = MatrixUtilities.parse(inputString: inputArea.text, delimitedBy: ("\n", ""))
    
    if(!inputValidationResults.success) {
      let alert = UIAlertController(title: "Error", message: inputValidationResults.error, preferredStyle: .alert)
      let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(okAction)
      self.show(alert, sender: nil)
      return
    }
    
    
  }
  
  // Resets the UI
  func resetOutputLabels()
  {
    lowestCostLabel.text = "Lowest Cost"
    pathExists.text = "Path Exists"
    lowestCostPath.text = "Path"
  }
  
  // TextView delegate setup 
  func textViewDidBeginEditing(_ textView: UITextView)
  {
    resetOutputLabels()
  }


}

