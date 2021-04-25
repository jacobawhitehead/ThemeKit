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

public protocol FontProvider {
    func font(for context: TextContext) -> UIFont
}

public class Theme {
    
    private static var colorProvider: ColorProvider?
    private static var constantProvider: UIConstantProvider?
    private static var fontProvider: FontProvider?
    
    // MARK: - Providers
    public static func color(for context: ColorContext) -> UIColor {
        colorProvider?.color(for: context) ?? .black
    }
    
    public static func constant(for context: UIConstantContext) -> CGFloat {
        constantProvider?.constant(for: context) ?? 0
    }
    
    public static func font(for context: TextContext) -> UIFont {
        fontProvider?.font(for: context) ?? .preferredFont(forTextStyle: .body)
    }
    
    // MARK: - Setters
    public static func setColorProvider(_ provider: ColorProvider) {
        colorProvider = provider
    }
    
    public static func setUIConstantProvider(_ provider: UIConstantProvider) {
        constantProvider = provider
    }
    
    public static func setFontProvider(_ provider: FontProvider) {
        fontProvider = provider
    }
    
}
