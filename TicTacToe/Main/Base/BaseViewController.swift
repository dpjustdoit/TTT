//
//  BaseViewController.swift
//  TicTacToe
//
//  Created by Dmytro Piankov on 7/20/18.
//  Copyright © 2018 Dmytro Piankov. All rights reserved.
//
import UIKit

class BaseViewController: UIViewController {

    @IBOutlet var activityIndicatorView: UIActivityIndicatorView!

    var enableUI: Bool = true {
        didSet {
            self.view.isUserInteractionEnabled = enableUI

            if enableUI {
                self.activityIndicatorView.startAnimating()
            } else {
                self.activityIndicatorView.stopAnimating()
            }
        }
    }
}
