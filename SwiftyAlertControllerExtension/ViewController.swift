//
//  ViewController.swift
//  SwiftyAlertControllerExtension
//
//  Created by Sugam Kalra on 01/08/16.
//  Copyright © 2016 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    @IBAction func btnShowAlertPressed(sender:AnyObject)
    {
        UIAlertController.showAlertWithGenericError(self)
    }
    
    @IBAction func btnShowCustomAlertPressed(sender:AnyObject)
    {
        UIAlertController.showAlertWithCustomMessage(self, messageText: "Custom Message", title: "Alert")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

