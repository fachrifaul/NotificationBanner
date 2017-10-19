//
//  UIFont+Extension.swift
//  NotificationBanner
//
//  Created by Fachri Work on 10/19/17.
//  Copyright © 2017 Dalton Hinterscher. All rights reserved.
//

import Foundation
import UIKit

enum SystemFontWeight : String {
    case ultraLight = "HelveticaNeue-UltraLight"
    case thin = "HelveticaNeue-Thin"
    case light = "HelveticaNeue-Light"
    case regular = "HelveticaNeue"
    case medium = "HelveticaNeue-Medium"
    case semibold = "Helvetica-Bold"
    case bold = "HelveticaNeue-Bold"
    case heavy = "HelveticaNeue-CondensedBold"
    case black = "HelveticaNeue-CondensedBlack"
    
    var weightValue:UIFont.Weight? {
        if #available(iOS 8.2, *) {
            switch self {
            case .ultraLight:
                return UIFont.Weight.ultraLight
            case .thin:
                return UIFont.Weight.thin
            case .light:
                return UIFont.Weight.light
            case .regular:
                return UIFont.Weight.regular
            case .medium:
                return UIFont.Weight.medium
            case .semibold:
                return UIFont.Weight.semibold
            case .bold:
                return UIFont.Weight.bold
            case .heavy:
                return UIFont.Weight.heavy
            case .black:
                return UIFont.Weight.black
            }
        } else {
            return nil
        }
    }
}

extension UIFont {
    static func systemFontOfSize(ofSize:CGFloat, weight:SystemFontWeight) -> UIFont {
        if #available(iOS 8.2, *) {
            return UIFont.systemFont(ofSize: ofSize, weight: weight.weightValue!)
        } else {
            // Fallback on earlier versions
            return UIFont(name: weight.rawValue, size: ofSize)!
        }
    }
}
