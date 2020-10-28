//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit



class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    var calculatorBarin = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLable.text = String(format:"%.2f" , (sender.value))+"m"
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLable.text = String(format:"%.0f" , sender.value)+"kg"
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBarin.bmiCalculate(weight: weight, height: height)
        self.performSegue(withIdentifier: "result", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result" {
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculatorBarin.getBMI()
            destinationVc.advice = calculatorBarin.getAdvice()
            destinationVc.color = calculatorBarin.getColor()
        }
    }
    
    
}





