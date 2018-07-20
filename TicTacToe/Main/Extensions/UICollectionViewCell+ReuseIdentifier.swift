//
//  UICollectionViewCell+ReuseIdentifier
//  TicTacToe
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import UIKit

protocol ReusableView: class {

    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {

    static var defaultReuseIdentifier: String {

        return String(describing: self)
    }
}

extension UICollectionViewCell: ReusableView {}
