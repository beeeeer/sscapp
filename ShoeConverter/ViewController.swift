//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Adam Nowak on 30.05.2015.
//  Copyright (c) 2015 NowakAdam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var WomensConvertedSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {
        

        
    let sizeFromTextfield = mensShoeSizeTextField.text.toInt()!
    let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextfield + conversionConstant)" + " in European shoe size"
        mensConvertedShoeSizeLabel.textColor = UIColor.blueColor()
        
    }

    @IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
        
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 30.5
        
        WomensConvertedSizeLabel.hidden = false
        WomensConvertedSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        WomensConvertedSizeLabel.textColor = UIColor.redColor()
    }
}

