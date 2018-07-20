//
//  ViewControllerFactory.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/19/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//

import UIKit

class ViewControllerFactory {

    private enum Storyboard {

        static let coordinationStoryboardName = "Coordination"
        static let selectionStoryboardName = "Selection"
        static let gameStoryboardName = "Game"
    }

    private static var coordinationStoryboard: UIStoryboard {

        return UIStoryboard(name: Storyboard.coordinationStoryboardName, bundle: Bundle(for: ViewControllerFactory.self))
    }

    private static var selectionStoryboard: UIStoryboard {

        return UIStoryboard(name: Storyboard.selectionStoryboardName, bundle: Bundle(for: ViewControllerFactory.self))
    }

    private static var gameStoryboard: UIStoryboard {

        return UIStoryboard(name: Storyboard.gameStoryboardName, bundle: Bundle(for: ViewControllerFactory.self))
    }

    class func makeCoordinationNavigationViewController() -> UIViewController {

        let coordinationNavigationViewController = self.coordinationStoryboard.instantiateInitialViewController()

        return coordinationNavigationViewController as! CoordinationNavigationViewController
    }

    class func makeSelectionDefaultViewController() -> SelectionDefaultViewController {

        let selectionDefaultViewController = self.selectionStoryboard.instantiateInitialViewController()

        return selectionDefaultViewController as! SelectionDefaultViewController
    }

    class func makeGameDefaultViewController() -> GameDefaultViewController {

        let gameDefaultViewController = self.gameStoryboard.instantiateInitialViewController()

        return gameDefaultViewController as! GameDefaultViewController
    }
}
