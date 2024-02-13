//
//  ThirdViewController.swift
//  4 month 1 lesson
//
//  Created by Apple on 13.2.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    
    private var label: UILabel = {
        let lb = UILabel()
        lb.text = ""
        lb.textColor = .white
        lb.font = .boldSystemFont(ofSize: 30)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    var laabel: String?
    
    
//    private var email: String
//    
//    init(email: String) {
//        self.email = email
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//        
//        
//    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label == laabel
        view.backgroundColor = .systemCyan
//        let gradientLayer = CAGradientLayer()
//                gradientLayer.frame = view.bounds
//                gradientLayer.colors = [UIColor.systemTeal.cgColor, UIColor.systemPink.cgColor]
//                gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
//                gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.5)
//                view.layer.insertSublayer(gradientLayer, at: 0)

        
        
        
        view.addSubview(label)
        NSLayoutConstraint.activate(
            [label.centerXAnchor.constraint(equalTo:view.centerXAnchor),
             label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
             label.heightAnchor.constraint(equalToConstant: 50),
             label.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    

}
