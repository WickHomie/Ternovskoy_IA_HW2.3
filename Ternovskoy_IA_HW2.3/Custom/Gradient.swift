//
//  Gradient.swift
//  Ternovskoy_IA_HW2.3
//
//  Created by Илья Терновской on 31.01.2022.
//

import UIKit

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

