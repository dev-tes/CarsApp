//
//  ExploreViewControllerExtension.swift
//  CarsApp
//
//  Created by  Tes on 04/12/2021.
//

import UIKit
extension ExploreViewController {
    class LeftPaddedTextField: UITextField {
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
        }
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
        }
    }
}
