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
    
    let topColor = UIColor(displayP3Red: 0, green: 70 / 100, blue: 100, alpha: 1)
    let bottomColor = UIColor(displayP3Red: 100, green: 100, blue: 100, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientColor(topColor: topColor, bottomColor: bottomColor)
        welcomeLabel.text = "Welcome, \(labelValue)!"
    }
    
}

extension UIView {
    func addGradientColor(topColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

