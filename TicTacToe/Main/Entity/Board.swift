//
//  Board.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import UIKit

protocol GameBoard {
    var numberOfSections: Int { get }
    var numberOfItemsInSection: Int { get }
    func canSelect(indexPath: IndexPath) -> Bool
    func imageName(indexPath: IndexPath) -> String
}

struct Board {

    private var grid: [[Cell]]

    init(size: Int) {
        self.grid = []
        (0..<size).forEach{_ in
            self.grid.append(Array(repeating: Cell(), count: size))
        }
    }

    func value(indexPath: IndexPath) -> String {
        return self.grid[indexPath.row][indexPath.section].imageName
    }

    mutating func setValue(value: String, indexPath: IndexPath) {
        self.grid[indexPath.row][indexPath.section].imageName = value
    }
}

extension Board: GameBoard {

    var numberOfSections: Int {
        return grid.count
    }

    var numberOfItemsInSection: Int {
        return grid[0].count
    }

    func canSelect(indexPath: IndexPath) -> Bool {
        return self.grid[indexPath.row][indexPath.section].isEmpty
    }

    func imageName(indexPath: IndexPath) -> String {
        return self.grid[indexPath.row][indexPath.section].imageName
    }
}

struct Cell {
    var imageName: String = ""
    var isEmpty: Bool {
        return self.imageName.isEmpty
    }
}
