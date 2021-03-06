//
//  GameInteractor.swift
//  Game
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

protocol GameInteractor {

    var presenter: GamePresenter? { get set }

    func gameBoard(xmarkFirstGame: Bool) -> GameBoard
    func currentPlayerName() -> String
    func resetGame()
    func makeMove(indexPath: IndexPath) -> GameResult
}
