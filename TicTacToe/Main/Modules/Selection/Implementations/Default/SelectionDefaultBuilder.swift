//
//  SelectionDefaultBuilder.swift
//  SelectionDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

class SelectionDefaultBuilder {

    func main() -> UIViewController {
        let view = ViewControllerFactory.makeSelectionDefaultViewController()
        let interactor = SelectionDefaultInteractor()
        let presenter = SelectionDefaultPresenter()
        let router = SelectionDefaultRouter()

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        router.presenter = presenter
        router.viewController = view

        return view
    }
}
