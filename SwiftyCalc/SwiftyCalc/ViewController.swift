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
    
    var currentOperator = ""
    var leftNumber = 0.0
    var rightNumber = 0.0
    var result = 0.0
    
    
    //MARK: - Interactivity Methods
    
    @IBAction func buttonClearPressed(sender: UIButton) {
        print("Clear")
        displayLabel.text = "0"
        leftNumber = 0.0
        rightNumber = 0.0
        result = 0.0
        currentOperator = ""
    }
    
    @IBAction func button1Pressed(sender: UIButton) {
        print("1")
//        leftNumber = 1.0
        displayLabel.text = String(1)
        if currentOperator == "" {
            leftNumber = Double(displayLabel.text!)!
        } else {
            rightNumber = Double(displayLabel.text!)!
        }
        print(leftNumber, rightNumber)
    }
    
    @IBAction func button2Pressed(sender: UIButton) {
        print("2")
//        rightNumber = 2
        displayLabel.text = String(2)
        if currentOperator == "" {
            leftNumber = Double(displayLabel.text!)!
        } else {
            rightNumber = Double(displayLabel.text!)!
        }
    }
    
    @IBAction func buttonPlusPressed(sender: UIButton) {
        print("+")
        currentOperator = "+"
    }
    
    @IBAction func buttonMinusPressed(sender: UIButton) {
        print("-")
        currentOperator = "-"
    }
    
    @IBAction func buttonEqualsPressed(sender: UIButton) {
        print("=")
        if currentOperator == "+" {
            result = leftNumber + rightNumber
            leftNumber = result
        }
        print(leftNumber, rightNumber)
        displayLabel.text = (String(format: "%f", result))
    }
    
    
    //MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentOperator = ""
        displayLabel.text = "0"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

