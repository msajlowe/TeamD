//
//  ViewController.swift
//  ProjectP2TeamD
//
//  Created by Amanda Lowe on 4/10/20.
//  Copyright © 2020 Amanda Lowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var salary = 0.00
    var miles = 0.00
    var minRide = 0.00
    var maxRide = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func salaryText(_ sender: Any) {
        salary = 17.00
    }
    @IBAction func minRide(_ sender: Any) {
        minRide = 0.00
    }
    @IBAction func maxRide(_ sender: Any) {
        maxRide = 100.00
    }
    
    @IBAction func findRate(_ sender: Any) {
        salary = salary / miles
        miles = miles / maxRide
    }
    
    @IBAction func findDriver(_ sender: Any) {
        
    }
    
    
}

