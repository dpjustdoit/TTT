//
//  SelectionDefaultViewController.swift
//  SelectionDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

class SelectionDefaultViewController: BaseViewController, SelectionViewController {

    var presenter: SelectionPresenter?
}

extension SelectionDefaultViewController {

    @IBAction func startXButtonPressed(_ sender: Any) {
        self.presenter?.didSelect(xmarkFirstGame: true)
    }


    @IBAction func startOButtonPressed(_ sender: Any) {
        self.presenter?.didSelect(xmarkFirstGame: false)
    }
}
