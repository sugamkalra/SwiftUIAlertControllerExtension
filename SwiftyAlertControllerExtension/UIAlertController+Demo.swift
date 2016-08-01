//
//  UIAlertController+Demo.swift
//  CBISales
//
//  Created by Sugam Kalra on 25/07/16.
//  Copyright © 2016 Constellation Brands, Inc. All rights reserved.
//

import Foundation
import UIKit


extension UIAlertController{
    
    /*!
    * @discussion Displays an alert with a general error message in the passed view controller
    * @param viewControllerToDisplayIn the UIViewController to display the alert in
    **/
    static func showAlertWithGenericError(viewControllerToDisplayIn : UIViewController)
    {
        showAlertWithCustomMessage(viewControllerToDisplayIn, messageText: NSLocalizedString("Error", comment : ""), title: NSLocalizedString("Alert", comment : ""))
    }
    
    
    
    /*!
    * @discussion Displays an alert with an auth error message in the passed view controller
    * @param viewControllerToDisplayIn the UIViewController to display the alert in
    * @param confirmationAction the UIAlertAction to take when the user taps OK
    **/
    static func showAlertWithAuthError(viewControllerToDisplayIn : UIViewController, confirmationAction : UIAlertAction)
    {
        showAlertWithCustomMessage(viewControllerToDisplayIn, messageText: NSLocalizedString("Auth Error", comment : ""), title: NSLocalizedString("Alert", comment : ""), confirmationAction : confirmationAction)
    }
    
    
    /*!
    * @discussion Displays an alert with a custom message in the passed view controller
    * @param viewControllerToDisplayIn the UIViewController to display the alert in
    * @param messageText the message to be displayed
    * @param title the title to display in the alert
    **/
    static func showAlertWithCustomMessage(viewControllerToDisplayIn : UIViewController, messageText : String, title : String)
    {
        let OKAction = UIAlertAction(title: NSLocalizedString("OK", comment : ""), style: .Default) { (action) in
            
            viewControllerToDisplayIn.dismissViewControllerAnimated(true, completion:nil)
        }
        
        showAlertWithCustomMessage(viewControllerToDisplayIn, messageText:messageText, title: title, confirmationAction: OKAction)
    }
    
    
    /*!
    * @discussion Displays an alert with a custom message in the passed view controller
    * @param viewControllerToDisplayIn the UIViewController to display the alert in
    * @param messageText the message to be displayed
    * @param title the title to display in the alert
    * @param confirmationAction the UIAlertAction to take when the user taps OK
    **/
    static func showAlertWithCustomMessage(viewControllerToDisplayIn : UIViewController, messageText : String, title : String, confirmationAction : UIAlertAction)
    {
        let alertController = UIAlertController(title:title, message: messageText, preferredStyle: .Alert)
        
        alertController.addAction(confirmationAction)
        viewControllerToDisplayIn.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
}