//
//  GameDefaultInteractor.swift
//  GameDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

typealias GameResult = (isGameFinished: Bool, isDraw: Bool, board: GameBoard)

class GameDefaultInteractor: GameInteractor {

    fileprivate enum Constants {
        static let xplayerName = "X"
        static let oplayerName = "O"
        static let xImageName = "x_mark"
        static let oImageName = "o_mark"
    }

    weak var presenter: GamePresenter?

    func gameBoard(xmarkFirstGame: Bool) -> GameBoard {
        
        let firstPlayer = xmarkFirstGame ? Player(playerName: Constants.xplayerName,
                                                  imageName: Constants.xImageName,
                                                  positions: []) : Player(playerName: Constants.oplayerName,
                                                                          imageName: Constants.oImageName,
                                                                          positions: [])
        let secondPlayer =  xmarkFirstGame ? Player(playerName: Constants.oplayerName,
                                                    imageName: Constants.oImageName,
                                                    positions: []) : Player(playerName: Constants.xplayerName,
                                                                            imageName: Constants.xImageName,
                                                                            positions: [])
        Game.shared.players = [firstPlayer, secondPlayer]

        return Game.shared.board
    }

    func currentPlayerName() -> String {
        return Game.shared.currentPlayer.playerName
    }

    func resetGame() {
        Game.shared.reset()
    }

    func makeMove(indexPath: IndexPath) -> GameResult {
        let isGameFinished = Game.shared.currentPlayerMove(indexPath: indexPath)
        return (isGameFinished, Game.shared.isDraw, Game.shared.board)
    }
}
