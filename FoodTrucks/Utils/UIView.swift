//
//  UIView.swift
//  FoodTrucks
//
//  Created by Jason Ngo on 2018-09-06.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

extension UIView {
    func anchor(topConstraint: NSLayoutYAxisAnchor?, topConstant: CGFloat, leftConstraint: NSLayoutXAxisAnchor?, leftConstant: CGFloat,
                bottomConstraint: NSLayoutYAxisAnchor?, bottomConstant: CGFloat, rightConstraint: NSLayoutXAxisAnchor?, rightConstant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let topConstraint = topConstraint {
            topAnchor.constraint(equalTo: topConstraint, constant: topConstant).isActive = true
        }
        
        if let leftConstraint = leftConstraint {
            leftConstraint.constraint(equalTo: leftConstraint, constant: leftConstant).isActive = true
        }
        
        if let bottomConstraint = bottomConstraint {
            bottomConstraint.constraint(equalTo: bottomConstraint, constant: bottomConstant).isActive = true
        }
        
        if let rightConstraint = rightConstraint {
            rightConstraint.constraint(equalTo: rightConstraint, constant: rightConstant).isActive = true
        }
    }
    
    func center(_ centerXAxis: NSLayoutXAxisAnchor?, centerXConstant: CGFloat, centerYAxis: NSLayoutYAxisAnchor?, centerYConstant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let centerXAxis = centerXAxis {
            centerXAnchor.constraint(equalTo: centerXAxis, constant: centerXConstant).isActive = true
        }
        
        if let centerYAxis = centerYAxis {
            centerYAnchor.constraint(equalTo: centerYAxis, constant: centerYConstant).isActive = true
        }
    }
    
    func constrain(width widthConstant: CGFloat, height heightConstant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if widthConstant != 0 {
            widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
        }
        
        if heightConstant != 0 {
            heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
        }
    }
}
