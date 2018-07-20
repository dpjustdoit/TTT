//
//  Game.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import Foundation

typealias GameResult = (success: Bool, message: String)

class Game {

    static let shared = Game()

    let boardSize: Int = 3
    var players: [Player] = []
    var isGameInProgress: Bool {
        return !self.players.isEmpty
    }

    private var currentPlayerIndex: Int = 0

    func checkWinner() -> GameResult {
        return (false, "")
    }

    init() {
    }
}
