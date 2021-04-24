//
//  UIView+Helpers.swift
//  Tiidy
//
//  Created by Jacob Whitehead on 24/04/2021.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func backgroundColor(_ color: ColorContext) -> Self {
        backgroundColor = Theme.color(for: color)
        return self
    }
    
}
