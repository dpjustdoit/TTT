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

    var xmarkFirstGame: Bool

    init(xmarkFirstGame: Bool) {
        self.xmarkFirstGame = xmarkFirstGame
    }

    func viewDidLoad() {

        guard let interactor = self.interactor else {
            return
        }
        let game = interactor.set(xmarkFirstGame: self.xmarkFirstGame)
        let board = self.board(game: game)
        self.view?.board = board
    }

    func viewDidDisappear(_ animated: Bool) {
        self.interactor?.resetGame()
    }

    func board(game: Game) -> Board {
        var grid: [[Cell]] = []
        (0..<game.boardSize).forEach{_ in
            grid.append(Array(repeating: Cell(), count: game.boardSize))
        }
        let board = Board(grid: grid)

        return board
    }
}
