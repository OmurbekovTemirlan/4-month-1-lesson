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
                        borderWidth: CGFloat = 2,
                        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UITextField {
        
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
        tf.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return tf
    }
    
    
//    func makerButton() -> UIButton {
//        let button = UIButton()
//        button.s
//    }
    //private var emailTF: UITextField = {
    //        let tf = UITextField()
    //        tf.placeholder = "erp1253@gmail.com"
    //        tf.layer.borderColor = UIColor.gray.cgColor
    //        tf.layer.borderWidth = 2
    //        tf.layer.cornerRadius = 16
    //        tf.font = Fonts.regular.size(16)
    //        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
    //        tf.leftView = view
    //        tf.leftViewMode = .always
    //        tf.translatesAutoresizingMaskIntoConstraints = false
    //        return tf
    //    }()
}
