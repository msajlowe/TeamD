//
//  DetailsViewController.swift
//  ProjectP2TeamD
//
//  Created by Dax Jones on 4/30/20.
//  Copyright © 2020 Amanda Lowe. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var name: String = ""
    var price: String = ""
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var costTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTitle.text = name
        costTitle.text = price
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func onSelect(_ sender: Any) {
        //TODO: Add function that confirms and set driver/ passenger
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
