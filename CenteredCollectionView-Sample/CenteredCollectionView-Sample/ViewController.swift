//
//  ViewController.swift
//  CenteredCollectionView-Sample
//
//  Created by Dejan Skledar on 17/04/2018.
//  Copyright © 2018 Dejan Skledar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var collectionView: UICollectionView!

    private let titles = [
        "cersei",
        "daenerys the stormborn",
        "lannister",
        "snow the bastard",
        "stark",
        "baratheon",
        "tyrion the dworf"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewCenterLayout()
        layout.estimatedItemSize = CGSize(width: 140, height: 40)
        collectionView.collectionViewLayout = layout
    }

    // MARK - UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "titleCell",
                                                            for: indexPath) as? RoundedCollectionViewCell else {
                                                                return RoundedCollectionViewCell()
        }
        cell.textLabel.text = titles[indexPath.row]
        return cell
    }
}

