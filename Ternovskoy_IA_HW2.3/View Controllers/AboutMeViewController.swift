//
//  AboutMeViewController.swift
//  Ternovskoy_IA_HW2.3
//
//  Created by Илья Терновской on 31.01.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var introLabel: UILabel!
    @IBOutlet var moreInfoPressed: UIButton!
    
    
    var user: User!
    
    
    private let topColor = UIColor(displayP3Red: 0, green: 50 / 100, blue: 100, alpha: 1)
    private let bottomColor = UIColor(displayP3Red: 100, green: 100, blue: 100, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.userFullName
        
        moreInfoPressed.layer.cornerRadius = 13
        
        view.addGradientColor(topColor: topColor, bottomColor: bottomColor)
        
        introLabel.text = user.person.info.intro
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personalVC = segue.destination as? PersonalInfoViewController else { return }
        personalVC.user = user
    }

}
