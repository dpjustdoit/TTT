//
//  GameDefaultPresenter.swift
//  GameDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

class GameDefaultPresenter: GamePresenter {

    var router: GameRouter?
    var interactor: GameInteractor?
    weak var view: GameViewController?
}
