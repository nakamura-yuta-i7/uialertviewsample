//
//  ViewController.swift
//  UIAlertViewSample
//
//  Created by 中村祐太 on 2015/09/16.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlertController(sender: AnyObject) {
        
        let normalAlert = UIAlertController(title: "Alert Controller",
            message: "New to iOS 8",
            preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "Gotcha",
            style: .Cancel,
            handler: {
                action in println("Pushed Button: \(action.title)")
            })
        normalAlert.addAction(defaultAction)
        
        let otherAction1 = UIAlertAction(title: "Other 1",
            style: .Default,
            handler: nil)
        normalAlert.addAction(otherAction1)
        
        let otherAction2 = UIAlertAction(title: "Other 2",
            style: .Default,
            handler: nil)
        normalAlert.addAction(otherAction2)
        
        let otherAction3 = UIAlertAction(title: "Other 3",
            style: .Default,
            handler: nil)
        normalAlert.addAction(otherAction3)
        
        normalAlert.addTextFieldWithConfigurationHandler {
            textField in
            textField.placeholder = "How do you feel?"
            textField.textColor = .purpleColor()
            textField.keyboardType = .Default
        }
        
        self.presentViewController(normalAlert,
            animated: true,
            completion: nil)
        
    }
    @IBAction func showAlertView(sender: AnyObject) {
        let regularAlert: UIAlertView = UIAlertView(title: "Alert View",
            message: "Deprecated in iOS 8",
            delegate: nil,
            cancelButtonTitle: "Understood",
            otherButtonTitles: "Other 1", "Other 2", "Other 3")
        regularAlert.show()
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        println("Pushed Button: \(buttonIndex)")
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

