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
    var players: [Player] = []
    var currentPlayerIndex: Int = 0

    func checkWinner() -> GameResult {
        return (false, "")
    }

    init(players: [Player]) {
        self.players = players
    }
}
