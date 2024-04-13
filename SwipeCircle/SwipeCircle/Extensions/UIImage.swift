//
//  UIImage.swift
//  SwipeCircle
//
//  Created by Aist Maraby on 13.04.24.
//

import UIKit

extension UIImage {
    convenience init?(asset: ImageAsset) {
            self.init(named: asset.rawValue)
        }
}
