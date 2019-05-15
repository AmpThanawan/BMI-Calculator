//
//  ViewController.swift
//  BMIcalculator
//
//  Created by Thanawan on 24/1/2561 BE.
//  Copyright © 2561 thana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var categoryResult: UILabel!
    
    @IBOutlet weak var bmiLogo: UIImageView!
    @IBOutlet weak var inputHeight: UITextField!
    
    @IBOutlet weak var inputweight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calPress(_ sender: UIButton) {
        
        let height: Float = (inputHeight.text! as NSString).floatValue
        let weight: Float = (inputweight.text! as NSString).floatValue
        let bmi: Float = (weight/((height/100)*(height/100)))
        
        
       
        bmiResult.text = "\(bmi)"
        
        if (bmi < 18) {
            bmiLogo.image = UIImage(named:"Underweight.png")
            categoryResult.text = "Underweight"
            
        } else if (bmi >= 18 && bmi < 25) {
            bmiLogo.image = UIImage(named:"Healthy.png")
            categoryResult.text = "healthy"
           
        } else if (bmi >= 25 && bmi < 30) {
            bmiLogo.image = UIImage(named:"Overweight.png")
            categoryResult.text = "Overweight"
            
        } else {
            bmiLogo.image = UIImage(named:"Obese.png")
            categoryResult.text = "obese!!"
            
        }
        
    }
}

