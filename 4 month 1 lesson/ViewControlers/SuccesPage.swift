//
//  SuccesPage.swift
//  4 month 1 lesson
//
//  Created by Apple on 13.2.2024.
//

import UIKit

class SuccesPageController: UIViewController {
    private var succesIm: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "succes")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        view.backgroundColor = .systemCyan
        view.addSubview(succesIm)
        NSLayoutConstraint.activate([
            succesIm.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            succesIm.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
