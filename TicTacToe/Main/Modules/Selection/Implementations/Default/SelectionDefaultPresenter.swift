//
//  SelectionDefaultPresenter.swift
//  SelectionDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation

class SelectionDefaultPresenter: SelectionPresenter {

    var router: SelectionRouter?
    var interactor: SelectionInteractor?
    weak var view: SelectionViewController?

    func didSelect(mark: String) {
        self.router?.routeForMark(mark: mark)
    }
}
