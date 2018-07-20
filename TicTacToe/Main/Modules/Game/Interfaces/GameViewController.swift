//
//  GameViewController.swift
//  Game
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

protocol GameViewController: class {

    var presenter: GamePresenter? { get set }
    var board: Board? { get set }
}
