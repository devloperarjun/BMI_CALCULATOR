//
//  CalculateViewController.swift
//  BMI_Calculator
//
//  Created by arjun verma on 31/12/24.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var calculateBtn: UIButton!{
        didSet{
            calculateBtn.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLbl.text = "\(height)m"
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLbl.text = "\(weight)Kg"
    }
    
    
    @IBAction func calculateBtnTap(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}
