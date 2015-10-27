//
//  ViewController.swift
//  SwiftyCalc
//
//  Created by Mike Henry on 10/26/15.
//  Copyright © 2015 Mike Henry. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel :UILabel!
    @IBOutlet weak var equalsButton :UIButton!
    @IBOutlet weak var decimalButton :UIButton!
    
    var currentOperator = ""
    var leftNumber = 0.0
    var rightNumber = 0.0
    var result = 0.0
    var didFinishEqual = false
    
    
    //MARK: - Interactivity Methods
    
    @IBAction func buttonClearPressed(sender: UIButton) {
        print("Clear")
        displayLabel.text = ""
        leftNumber = 0.0
        rightNumber = 0.0
        result = 0.0
        currentOperator = ""
        didFinishEqual = false
    }
    
    @IBAction func buttonNumberPressed(sender: UIButton) {
        if didFinishEqual == true {
            displayLabel.text = ""
            currentOperator = ""
            leftNumber = 0
            rightNumber = 0
            didFinishEqual = false
            print("DFE")
        }
        displayLabel.text = displayLabel.text! + sender.currentTitle!
        print(displayLabel.text)
        //TODO: Fix decimal statement
        let decimal = ".."
        switch decimal {
        case "..":
            decimalButton.enabled = false
            print("Decimal disabled")
        default:
            decimalButton.enabled = true
        }
        
        if currentOperator == "" {
            leftNumber = Double(displayLabel.text!)!
        } else {
            rightNumber = Double(displayLabel.text!)!
        }
        print(leftNumber, rightNumber)
    }
    
    @IBAction func buttonOperatorPressed(sender: UIButton) {
        print(sender.currentTitle)
        currentOperator = sender.currentTitle!
        if currentOperator == "±" {
            result = leftNumber * -1
            leftNumber = result
            displayLabel.text = (String(format: "%f", result))
            print(displayLabel.text)
        }
        else if currentOperator == "%" {
            result = leftNumber / 100
            leftNumber = result
            displayLabel.text = (String(format: "%f", result))
        } else {
         displayLabel.text = ""
        }
        self.continueOperation()
    }
    
    @IBAction func buttonEqualsPressed(sender: UIButton) {
        print("=")
        if currentOperator == "+" {
            result = leftNumber + rightNumber
            leftNumber = result
            rightNumber = 0
//            currentOperator = ""
        }
        if currentOperator == "-" {
            result = leftNumber - rightNumber
            leftNumber = result
            rightNumber = 0
//            currentOperator = ""
        }
        if currentOperator == "X" {
            result = leftNumber * rightNumber
            leftNumber = result
            rightNumber = 0
//            currentOperator = ""
        }
        if currentOperator == "÷" {
            result = leftNumber / rightNumber
            leftNumber = result
            rightNumber = 0
//            currentOperator = ""
        }
        print(leftNumber, rightNumber)
//        currentOperator = ""
        displayLabel.text = (String(format: "%f", result))
        didFinishEqual = true;
    }
    
    func continueOperation() {
        if leftNumber != 0 && rightNumber != 0 {
            self.buttonEqualsPressed(equalsButton)
            displayLabel.text = ""
        }
    }
    
    
    //MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentOperator = ""
//        displayLabel.text = "0"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

