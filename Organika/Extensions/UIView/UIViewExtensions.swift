//
//  UIViewExtensions.swift
//  Organika
//
//  Created by Artem Vaniukov on 19.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import UIKit

extension UIView {
    
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowOffset = .init(width: 1.0, height: 1.0)
        layer.shadowRadius = 2
        
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
