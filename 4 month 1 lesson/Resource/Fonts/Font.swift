//
//  Font.swift
//  4 month 1 lesson
//
//  Created by Apple on 10.2.2024.
//


import UIKit

enum Fonts: String {
    case bold = "Roboto-Bold"
    case medium = "Roboto-Medium"
    case regular = "Roboto-Regular"
    
    func size(_ size: CGFloat) -> UIFont {
        if let font = UIFont(name: rawValue, size: size) {
            return font
        } else {
            return UIFont.systemFont(ofSize: size)
        }
    }
}
