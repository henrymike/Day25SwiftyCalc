//
//  ViewController.swift
//  SwiftyCalc
//
//  Created by Mike Henry on 10/26/15.
//  Copyright © 2015 Mike Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testButton :UIButton!
    @IBOutlet weak var ouputLabel :UILabel!
    
    var leftNumber = 0;
    var rightNumber = 0;
    var result = 0;
    
    //MARK: - Interactivity Methods
    
    @IBAction func testButtonPressed(sender: UIButton) {
        print("Button Pressed")
    }
    
    @IBAction func buttonClearPressed(sender: UIButton) {
        print("Clear")
    }
    
    @IBAction func button1Pressed(sender: UIButton) {
        print("1")
    }
    
    @IBAction func button2Pressed(sender: UIButton) {
        print("2")
    }
    
    @IBAction func buttonPlusPressed(sender: UIButton) {
        print("+")
    }
    
    @IBAction func buttonMinusPressed(sender: UIButton) {
        print("-")
    }
    
    @IBAction func buttonEqualsPressed(sender: UIButton) {
        print("=")
    }
    
    
    //MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

