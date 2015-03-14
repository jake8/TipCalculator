//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jake Stabile on 3/13/15.
//  Copyright (c) 2015 Jake Stabile. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var totalTextField: NSTextField!
    @IBOutlet weak var tipSlider: NSSlider!
    @IBOutlet weak var tipLabel: NSTextField!
    @IBOutlet weak var calculateButton: NSButton!
    @IBOutlet weak var tipTotalLabel: NSTextField!
    @IBOutlet weak var checkTotalLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tipLabel.integerValue = tipSlider.integerValue
        tipTotalLabel.stringValue = ""
        checkTotalLabel.stringValue = ""
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func tipSliderValueChanged(sender: AnyObject) {
        tipLabel.floatValue = round(sender.floatValue)
    }
    
    @IBAction func calculateButtonPressed(sender: AnyObject) {
        var tip = totalTextField.floatValue * round(tipSlider.floatValue) / 100.00
        var total = totalTextField.floatValue + tip
        
        tipTotalLabel.stringValue = String(format: "$%.02f", tip)
        checkTotalLabel.stringValue = String(format: "$%.02f", total)
    }
    

}

