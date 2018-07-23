//
//  Player.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import Foundation

struct Player: Codable {
    let playerName: String
    let imageName: String
    var positions: [IndexPath]
}
