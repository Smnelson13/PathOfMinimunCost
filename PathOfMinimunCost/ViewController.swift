//
//  ViewController.swift
//  PathOfMinimunCost
//
//  Created by Shane Nelson on 9/3/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController
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




}

