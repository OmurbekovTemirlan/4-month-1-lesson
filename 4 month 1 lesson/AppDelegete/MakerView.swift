//
//  MakerView.swift
//  4 month 1 lesson
//
//  Created by Apple on 14.2.2024.
//

import UIKit

class MakerView {
    
    
    func makerLabel(text: String = "tima",
                    size: CGFloat = 12,
                    weight: UIFont.Weight = .regular,
                    textColor: UIColor = .black,
                    backraundColor: UIColor = .clear,
                    textAlignment: NSTextAlignment = .left,
                    numberOfLines: Int = 0,
                    lineBreakMode: NSLineBreakMode = .byWordWrapping,
                    translatesAutoresizingMaskIntoConstraints: Bool = false
                    
                    
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = textColor
        label.backgroundColor = backraundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        
        return label
    }
    
    func makerTextField(textColor: UIColor = .black,
                        placeholder: String = "Fill the field",
                        cornerRadius: CGFloat = 16,
                        backgroundColor: UIColor = .clear,
                        borderColor: CGColor = UIColor.gray.cgColor,
                        borderWidth: CGFloat = 2 ) -> UITextField {
        
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.layer.cornerRadius = cornerRadius
        tf.backgroundColor = backgroundColor
        tf.layer.borderColor  = borderColor
        tf.layer.borderWidth = borderWidth
        tf.textColor = textColor
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }
    
    
    func makerButton(
        title: String = "",
        for state: UIControl.State = .normal,
        colorBt: UIColor = .blue,
        backgroundColorBT: UIColor? = nil,
        cornerRadiusBt: CGFloat = 16) -> UIButton {
            let button = UIButton(type: .system)
            button.setTitle(title, for: state)
            button.tintColor = colorBt
            button.backgroundColor = backgroundColorBT
            button.layer.cornerRadius = cornerRadiusBt
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
            
        }
    
//    private var signInBtn: UIButton = {
//        let signBtn = UIButton(type: .system)
//        signBtn.setTitle("Sign In", for: .normal)
//        signBtn.setTitleColor(.white, for: .normal)
//        signBtn.backgroundColor = .systemCyan
//        signBtn.layer.cornerRadius = 15
//        signBtn.addTarget(nil, action: #selector(signInTapped), for: .touchUpInside)
//        signBtn.translatesAutoresizingMaskIntoConstraints = false
//        return signBtn
//        
//    }()

}
