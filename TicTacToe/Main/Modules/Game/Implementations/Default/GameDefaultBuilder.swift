//
//  GameDefaultBuilder.swift
//  GameDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

class GameDefaultBuilder {

    func main(xmarkFirstGame: Bool = false) -> UIViewController {
        let view = ViewControllerFactory.makeGameDefaultViewController()
        let interactor = GameDefaultInteractor()
        let presenter = GameDefaultPresenter(xmarkFirstGame: xmarkFirstGame)
        let router = GameDefaultRouter()

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        router.presenter = presenter
        router.viewController = view

        return view
    }
}
