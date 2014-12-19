//
//  ViewController.swift
//  TempConverter
//
//  Created by Jeff Gelina on 12/15/14.
//  Copyright (c) 2014 Jeff Gelina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var tempField: UITextField!
    
    @IBAction func textFieldReturn(sender: AnyObject) {
        self.convertAction(self)
    }
    
    @IBAction func convertAction(sender: AnyObject) {
        self.view.endEditing(true)
        let temp = NSString(string: tempField.text).doubleValue
        let converter = MyConverter()
        converter.temperatureScale = .F
        converter.temperature = temp
        let result = converter.convert(.C)
        resultLabel.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

