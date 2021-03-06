//
//  SelectionDefaultRouter.swift
//  SelectionDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

class SelectionDefaultRouter: SelectionRouter {

    weak var presenter: SelectionPresenter?
    weak var viewController: UIViewController?

    func routeForMark(xmarkFirstGame: Bool) {
        let viewController = GameDefaultBuilder().main(xmarkFirstGame: xmarkFirstGame)
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
