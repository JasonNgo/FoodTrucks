//
//  UIColor.swift
//  FoodTrucks
//
//  Created by Jason Ngo on 2018-09-06.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
