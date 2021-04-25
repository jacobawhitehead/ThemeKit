//
//  File.swift
//  
//
//  Created by Jacob Whitehead on 25/04/2021.
//

import UIKit

public enum TextContext: String, CaseIterable {
    case body
    case callout
    case caption1
    case caption2
    case footnote
    case headline
    case subheadline
    case largeTitle
    case title1
    case title2
    case title3
    
    var textStyle: UIFont.TextStyle {
        switch self {
        case .body: return .body
        case .callout: return .callout
        case .caption1: return .caption1
        case .caption2: return .caption2
        case .footnote: return .footnote
        case .headline: return .headline
        case .subheadline: return .subheadline
        case .largeTitle: return .largeTitle
        case .title1: return .title1
        case .title2: return .title2
        case .title3: return .title3
        }
    }
}
