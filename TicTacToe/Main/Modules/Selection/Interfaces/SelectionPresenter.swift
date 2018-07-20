//
//  SelectionPresenter.swift
//  Selection
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

protocol SelectionPresenter: class {

    var router: SelectionRouter? { get set }
    var interactor: SelectionInteractor? { get set }
    var view: SelectionViewController? { get set }

    func didSelect(xmarkFirstGame: Bool)
}
