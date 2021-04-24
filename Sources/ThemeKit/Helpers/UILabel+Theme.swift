//
//  UILabel+Theme.swift
//  Tiidy
//
//  Created by Jacob Whitehead on 24/04/2021.
//

import UIKit

extension UILabel {
    
    @discardableResult
    func color(_ context: ColorContext) -> Self {
        textColor = Theme.color(for: context)
        return self
    }
    
    @discardableResult
    func style(_ style: UIFont.TextStyle, useDynamicType: Bool = true) -> Self {
        font = UIFont.preferredFont(forTextStyle: style)
        adjustsFontForContentSizeCategory = useDynamicType
        return self
    }
    
    @discardableResult
    func numberOfLines(_ lines: Int) -> Self {
        numberOfLines = lines
        return self
    }
    
    @discardableResult
    func align(_ alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
    
    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
}
