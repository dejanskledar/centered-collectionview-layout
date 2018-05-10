//
//  RoundedCollectionViewCell.swift
//  Autistica
//
//  Created by Dejan Skledar on 20/03/2018.
//  Copyright © 2018 Equaleyes Solutions. All rights reserved.
//

import UIKit

class RoundedCollectionViewCell: UICollectionViewCell {
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var roundedView: RoundedView!

    override var isSelected: Bool {
        didSet {
            setNeedsLayout()
            layoutIfNeeded()
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        roundedView.borderWidth = isSelected ? 0 : 1
        roundedView.backgroundColor = isSelected ? .darkSkyBlue : .clear
    }
}
