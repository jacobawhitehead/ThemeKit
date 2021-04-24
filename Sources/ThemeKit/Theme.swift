//
//  Theme.swift
//  Tiidy
//
//  Created by Jacob Whitehead on 24/04/2021.
//

import UIKit

protocol ColorProvider {
    func color(for context: ColorContext) -> UIColor
}

protocol UIConstantProvider {
    func constant(for context: UIConstantContext) -> CGFloat
}

class Theme {
    
    private static var colorProvider: ColorProvider = StandardColorProvider()
    private static var constantProvider: UIConstantProvider = StandardUIConstantProvider()
    
    static func color(for context: ColorContext) -> UIColor {
        colorProvider.color(for: context)
    }
    
    static func constant(for context: UIConstantContext) -> CGFloat {
        constantProvider.constant(for: context)
    }
    
}
