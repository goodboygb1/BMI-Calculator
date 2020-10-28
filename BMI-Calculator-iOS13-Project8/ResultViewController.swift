//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by PMJs on 9/2/2563 BE.
//  Copyright © 2563 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
        adviceLable.text = advice
        background.backgroundColor = color
        
    }
    

    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
