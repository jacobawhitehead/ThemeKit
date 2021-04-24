//
//  Theme.swift
//  Tiidy
//
//  Created by Jacob Whitehead on 24/04/2021.
//

import UIKit

public protocol ColorProvider {
    func color(for context: ColorContext) -> UIColor
}

public protocol UIConstantProvider {
    func constant(for context: UIConstantContext) -> CGFloat
}

public class Theme {
    
    private static var colorProvider: ColorProvider?
    private static var constantProvider: UIConstantProvider?
    
    public static func color(for context: ColorContext) -> UIColor {
        colorProvider?.color(for: context) ?? .black
    }
    
    public static func constant(for context: UIConstantContext) -> CGFloat {
        constantProvider?.constant(for: context) ?? 0
    }
    
    public static func setColorProvider(_ provider: ColorProvider) {
        colorProvider = provider
    }
    
    public static func setUIConstantProvider(_ provider: UIConstantProvider) {
        constantProvider = provider
    }
    
}
