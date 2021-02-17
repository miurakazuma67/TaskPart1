//
//  ViewController.swift
//  TaskPart1
//
//  Created by 三浦　一真 on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalLabel.text = "0"
    }
    
    @IBAction func add(_ sender: Any) {
        let textFields: [UITextField] = [
            textField1,
            textField2,
            textField3,
            textField4,
            textField5
        ]
        
        var total = 0
        
        for textField in textFields {
            total += Int(textField.text ?? "") ?? 0
        }
        totalLabel.text = String(total)
    }
}

