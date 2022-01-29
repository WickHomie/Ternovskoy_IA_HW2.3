//
//  WelcomeViewController.swift
//  Ternovskoy_IA_HW2.3
//
//  Created by Илья Терновской on 28.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var labelValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(labelValue)"
    }
    
}
    
