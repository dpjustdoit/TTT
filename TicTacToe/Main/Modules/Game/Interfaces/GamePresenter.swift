//
//  GamePresenter.swift
//  Game
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

protocol GamePresenter: class {

    var router: GameRouter? { get set }
    var interactor: GameInteractor? { get set }
    var view: GameViewController? { get set }
    var xmarkFirstGame: Bool { get set }

    func viewDidLoad()
    func viewDidDisappear(_ animated: Bool)
}
