//
//  GameDefaultViewController.swift
//  GameDefault
//
//  Created by Dmytro Piankov on 2018. 07. 20..
//  Copyright © 2018. Dmytro Piankov. All rights reserved.
//

import Foundation
import UIKit

class GameDefaultViewController: BaseViewController, GameViewController {

    fileprivate enum Constants {
        static let bottomSectionInset: CGFloat = 5
        static let okButtonTitle = "OK"
    }

    var presenter: GamePresenter?

    @IBOutlet weak var gameCollectionView: UICollectionView!
    @IBOutlet weak var turnLabel: UILabel!
    
    var gameBoard: GameBoard? {
        didSet {
            self.gameCollectionView.reloadData()
        }
    }

    func updateTurnUI(message: String) {
        self.turnLabel.text = message
    }

    func showGameOver(title: String, handler: @escaping (() -> ())) {

        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)

        let okAction = UIAlertAction(title: Constants.okButtonTitle, style: .default, handler: { action in
            self.dismiss(animated: false, completion: nil)
            handler()
        })

        alert.addAction(okAction)

        self.present(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.loadData()
    }

    deinit {
        self.presenter?.resetData()
    }
}

// MARK: - UICollectionViewDataSource
extension GameDefaultViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.gameBoard?.numberOfSections ?? 0
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.gameBoard?.numberOfItemsInSection ?? 0
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GameCollectionViewCell.defaultReuseIdentifier, for: indexPath) as! GameCollectionViewCell
        
        self.gameBoard.map{
            let imageName = $0.imageName(indexPath: indexPath)
            cell.imageView.image = imageName.isEmpty ? nil : UIImage(named: imageName)
        }

        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension GameDefaultViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return self.gameBoard?.canSelect(indexPath: indexPath) ?? false
    }

    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.presenter?.selectData(indexPath: indexPath)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension GameDefaultViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        guard let gameBoard = self.gameBoard, (section != gameBoard.numberOfSections - 1) else {
            return UIEdgeInsets.zero
        }

        return UIEdgeInsetsMake(0, 0, Constants.bottomSectionInset, 0)
    }
}


