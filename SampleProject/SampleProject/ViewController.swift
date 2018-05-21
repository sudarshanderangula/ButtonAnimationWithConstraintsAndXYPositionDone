//
//  ViewController.swift
//  SampleProject
//
//  Created by Sundir Talari on 21/05/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonObject: UIButton!
    
    @IBOutlet weak var buttonLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var buttonTopConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonAction(_ sender: Any) {
        
        
        
        UIView.animate(withDuration: 0.5, animations: {
            self.buttonLeadingConstraint.constant =  self.buttonLeadingConstraint.constant + 100
            self.buttonTopConstraint.constant =  self.buttonTopConstraint.constant + 100
             self.view.layoutIfNeeded()
        }) { (completed) in
            self.buttonLeadingConstraint.constant =  self.buttonLeadingConstraint.constant - 100
            self.buttonTopConstraint.constant =  self.buttonTopConstraint.constant + 100
             self.view.layoutIfNeeded()
        }
        
        
        
    
    
    }
}

