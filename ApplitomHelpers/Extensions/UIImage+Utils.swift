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
}
