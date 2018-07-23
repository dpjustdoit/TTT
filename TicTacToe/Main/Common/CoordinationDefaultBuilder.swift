//
//  CoordinationDefaultBuilder.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/23/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import UIKit

class CoordinationDefaultBuilder {

    func main() -> UIViewController {

        let baseNavigationController = BaseNavigationController()

        guard Game.shared.isGameInProgress else {
            baseNavigationController.viewControllers = [SelectionDefaultBuilder().main()]
            return baseNavigationController
        }

        baseNavigationController.viewControllers = [SelectionDefaultBuilder().main(), GameDefaultBuilder().main()]
        return baseNavigationController
    }
}
