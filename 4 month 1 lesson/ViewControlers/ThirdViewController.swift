//
//  ThirdViewController.swift
//  4 month 1 lesson
//
//  Created by Apple on 13.2.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
                gradientLayer.colors = [UIColor.systemTeal.cgColor, UIColor.systemPink.cgColor]
                gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
                gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.5)
                view.layer.insertSublayer(gradientLayer, at: 0)

    }
    

}
