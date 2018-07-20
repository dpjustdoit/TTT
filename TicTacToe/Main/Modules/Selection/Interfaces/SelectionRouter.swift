//
//  SelectionRouter.swift
//  Selection
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

protocol SelectionRouter {

    var presenter: SelectionPresenter? { get set }

    func routeForMark(xmarkFirstGame: Bool)
}
