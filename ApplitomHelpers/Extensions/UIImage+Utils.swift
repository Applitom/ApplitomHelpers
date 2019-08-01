//
//  UIImageExtentions.swift
//  mapMyTrips
//
//  Created by Tomer Shalom on 16/04/2017.
//  Copyright © 2017 Applitom. All rights reserved.
//

import Foundation
import UIKit

public extension UIImage {
    
    /**
     This convenience init will create UIImage from the given UIView
     
     - parameters:
        - view: UIView to create image from
     */
    convenience init(view: UIView) {
        
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 0)
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }
    
    func resize(newSize:CGSize) -> UIImage{
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        
        self.draw(in: CGRect(x: 0,
                              y: 0,
                              width: newSize.width,
                              height: newSize.height))
        
        let newimg = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newimg!
    }
    
    func addInsets(insets: UIEdgeInsets) -> UIImage {
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: self.size.width + insets.left + insets.right,
                                                      height: self.size.height + insets.top + insets.bottom),
                                               false,
                                               self.scale)
        
        let _ = UIGraphicsGetCurrentContext()
        let origin = CGPoint(x: insets.left, y: insets.top)
        self.draw(at: origin)
        let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return imageWithInsets!
    }
    
    func imageWithAlpha(_ alphaFactor: CGFloat) -> UIImage {
        // Change app icon opacity
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        self.draw(at: .zero, blendMode: .normal, alpha: alphaFactor)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage ?? self
    }
}
