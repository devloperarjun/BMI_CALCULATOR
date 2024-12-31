//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by arjun verma on 31/12/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice: String?
    var color : UIColor?

    @IBOutlet weak var bmiLable: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var reCalculateBtn: UIButton!{
        didSet{
            reCalculateBtn.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.adviceLabel.text = advice
        self.bmiLable.text = bmiValue
        self.view.backgroundColor = color
    }
    
    @IBAction func recalculateTap(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
