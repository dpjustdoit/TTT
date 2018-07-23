//
//  CoordinationNavigationViewController.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import UIKit

class CoordinationViewController: BaseViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.present(CoordinationDefaultBuilder().main(), animated: false, completion: nil)
    }
}

