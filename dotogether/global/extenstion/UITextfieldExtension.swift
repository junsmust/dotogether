//
//  UITextfieldExtensionn.swift
//  dotogether
//
//  Created by 임명준 on 2020/09/02.
//  Copyright © 2020 임명준. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func setLeftPaddinng(_ value: Int) {
        self.leftViewMode = .always
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: CGFloat(value), height: self.frame.height))
    }
    func setHintAndHintColor(_ hint: String , color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: hint, attributes: [NSAttributedString.Key.foregroundColor : color])
    }
}
