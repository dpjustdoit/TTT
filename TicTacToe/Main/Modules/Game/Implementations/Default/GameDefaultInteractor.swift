//
//  GameDefaultInteractor.swift
//  GameDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

class GameDefaultInteractor: GameInteractor {

    weak var presenter: GamePresenter?

    func set(xmarkFirstGame: Bool) -> Game {
        
        let firstPlayer = xmarkFirstGame ? Player(playerName: "X",
                                              playerId: "X",
                                              positions: []) : Player(playerName: "O",
                                                                      playerId: "O",
                                                                      positions: [])
        let secondPlayer =  xmarkFirstGame ? Player(playerName: "O",
                                                playerId: "O",
                                                positions: []) : Player(playerName: "X",
                                                                        playerId: "X",
                                                                        positions: [])
        Game.shared.players = [firstPlayer, secondPlayer]

        return Game.shared
    }

    func resetGame() {
        Game.shared.players = []
    }
}
