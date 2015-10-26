//
//  ViewController.swift
//  SwiftyCalc
//
//  Created by Mike Henry on 10/26/15.
//  Copyright © 2015 Mike Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel :UILabel!
    var currentOperator :NSString!
    
    var leftNumber : Float = 0;
    var rightNumber : Float = 0;
    var result : Float = 0;
    
    //MARK: - Interactivity Methods
    
//    @IBAction func testButtonPressed(sender: UIButton) {
//        print("Button Pressed")
//    }
    
    @IBAction func buttonClearPressed(sender: UIButton) {
        print("Clear")
        displayLabel.text = ""
        leftNumber = 0
        rightNumber = 0
        result = 0
    }
    
    @IBAction func button1Pressed(sender: UIButton) {
        print("1")
        leftNumber = 1
        
    }
    
    @IBAction func button2Pressed(sender: UIButton) {
        print("2")
        rightNumber = 2
    }
    
    @IBAction func buttonPlusPressed(sender: UIButton) {
        print("+")
    }
    
    @IBAction func buttonMinusPressed(sender: UIButton) {
        print("-")
    }
    
    @IBAction func buttonEqualsPressed(sender: UIButton) {
        print("=")
        result = leftNumber + rightNumber
        displayLabel.text = (String(format: "%f", result))
    }
    
    
    //MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentOperator = ""

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

