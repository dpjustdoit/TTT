//
//  UIView+Snapshot.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/23/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var snapshot: UIImage? {
        UIGraphicsBeginImageContext(self.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
