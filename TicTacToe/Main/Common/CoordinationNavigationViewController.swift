//
//  CoordinationNavigationViewController.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import UIKit

class CoordinationNavigationViewController: BaseNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [SelectionDefaultBuilder().main()]
    }
}

