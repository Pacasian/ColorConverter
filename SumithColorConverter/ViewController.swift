//
//  ViewController.swift
//  SumithColorConverter
//
//  Created by Sumith Kumar on 27/12/18.
//  Copyright © 2018 Sumith Kumar. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var RedCode: NSTextField!
    @IBOutlet weak var GreenCode: NSTextField!
    @IBOutlet weak var BlueCode: NSTextField!

    
    @IBOutlet weak var OutPut: NSTextField!
    @IBAction func ConvertAction(_ sender: NSButton) {
       let red = RedCode.intValue
        let grn = GreenCode.intValue
        let blu = BlueCode.intValue
        
    
        let hexVal = "#" + String(format: "%02X", Int(red)) + String(format: "%02X", Int(grn)) + String(format: "%02X", Int(blu))
        OutPut.isEditable = true
        OutPut.stringValue = hexVal
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

