//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet private weak var metersLabel: UILabel!
    @IBOutlet private weak var kilogramsLabel: UILabel!
    @IBOutlet private weak var heightSlider: UISlider!
    @IBOutlet private weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = 1.5
        weightSlider.value = 100
    }

    @IBAction private func heightSliderChanged(_ sender: UISlider) {
//        print(sender.value)
        
//        metersLabel.text = String(format: "%.2f", sender.value ) + "m"
        
        let height = String(format: "%.2f", sender.value )
        metersLabel.text = "\(height)m"
    }

    
    @IBAction private func weightSliderChanged(_ sender: UISlider) {
//        print(sender.value)
        
//        kilogramsLabel.text = String(format: "%.0f", sender.value ) + "kg"
        
        let weight = String(format: "%.0f", sender.value )
        kilogramsLabel.text = "\(weight)kg"
    }
    

    @IBAction private func calculatePressedButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
//        let BMI = weight / (height * height)
        let BMI = weight / pow(height, 2)
        
        let secondViewController = SecondViewController()
        secondViewController.bmiValue = String(format: "%.1f", BMI)
        
        self.present(secondViewController, animated: true, completion: nil)
        
        print(BMI)
    }
    
}


