//
//  PersonalInfoViewController.swift
//  Ternovskoy_IA_HW2.3
//
//  Created by Илья Терновской on 31.01.2022.
//

import UIKit

class PersonalInfoViewController: UIViewController {
    
    @IBOutlet var moreInfoLabel: UILabel!
    
    var user: User!
    
    private let topColor = UIColor(displayP3Red: 0, green: 50 / 100, blue: 100, alpha: 1)
    private let bottomColor = UIColor(displayP3Red: 100, green: 100, blue: 100, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientColor(topColor: topColor, bottomColor: bottomColor)
        
        moreInfoLabel.text = user.person.info.work

    }
    

}
