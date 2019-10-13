//
//  Utility.swift
//  Enable Dark Mode iOS13
//
//  Created by Akashlal on 13/10/19.
//  Copyright © 2019 Akashlal. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    static var basicTextColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { (traits) -> UIColor in
                // Return one of two colors depending on light or dark mode
                return traits.userInterfaceStyle == .dark ?
                    UIColor(rgb: 0xeeeeee) :
                    UIColor(rgb: 0x121212)
            }
        } else {
            // Same old color used for iOS 12 and earlier
            return UIColor(rgb: 0x121212)
        }
    }
    
    static var btnTextColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { (traits) -> UIColor in
                // Return one of two colors depending on light or dark mode
                return traits.userInterfaceStyle == .dark ?
                    UIColor(rgb: 0x121212) :
                    UIColor(rgb: 0xeeeeee)
            }
        } else {
            // Same old color used for iOS 12 and earlier
            return UIColor(rgb: 0xeeeeee)
        }
    }
}
