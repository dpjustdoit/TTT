//
//  Board.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

struct Board {

    var numberOfSections: Int {
        return grid.count
    }

    var numberOfItemsInSection: Int {
        return grid[0].count
    }
    
    let grid: [[Cell]]
}

struct Cell {
    var imageName: String = ""
}
