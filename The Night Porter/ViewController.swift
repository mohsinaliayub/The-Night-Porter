//
//  ViewController.swift
//  The Night Porter
//
//  Created by Mohsin Ali Ayub on 07/07/2020.
//  Copyright © 2020 Mohsin Ali Ayub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = .darkGray
        
        // TODO: change the text color of every label
        
        // get everything contained in the top-level view
        let subviews = view.subviews
        
        for theView in subviews {
            // Is it a UILabel?
            if theView is UILabel {
                // downcast as UILabel
                let label = theView as! UILabel
                label.textColor = .lightGray
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }


}

