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

    var presenter: GamePresenter?

    var board: Board? {
        didSet {
            self.gameCollectionView.reloadData()
        }
    }

    @IBOutlet weak var gameCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.presenter?.viewDidDisappear(animated)
    }
}

// MARK: - UICollectionViewDataSource
extension GameDefaultViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.board?.numberOfSections ?? 0
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.board?.numberOfItemsInSection ?? 0
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GameCollectionViewCell.defaultReuseIdentifier, for: indexPath) as! GameCollectionViewCell

        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension GameDefaultViewController: UICollectionViewDelegate {

    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
}
