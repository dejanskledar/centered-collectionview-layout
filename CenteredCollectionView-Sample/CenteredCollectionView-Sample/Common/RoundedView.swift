//
//  RoundedView.swift
//  iOS Equaleyes Foundation
//
//  Created by Dejan Skledar on 23/10/2017.
//  Copyright © 2017 Equaleyes Solutions Ltd. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView, Roundable {
    @IBInspectable var isCircle: Bool = false {
        didSet {
            setupLayer()
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            setupLayer()
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            setupLayer()
        }
    }

    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            setupLayer()
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayer()
    }
}
