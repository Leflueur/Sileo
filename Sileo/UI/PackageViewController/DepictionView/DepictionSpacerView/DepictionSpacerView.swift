//
//  DepictionSpacerView.swift
//  Sileo
//
//  Created by CoolStar on 7/6/19.
//  Copyright © 2019 Sileo Team. All rights reserved.
//
// Make sure to also update FeaturedSpacerView.swift

import Foundation

class DepictionSpacerView: DepictionBaseView {
    let spacing: CGFloat

    required init?(dictionary: [String: Any], viewController: UIViewController, tintColor: UIColor, isActionable: Bool) {
        guard let spacing = dictionary["spacing"] as? CGFloat else {
            return nil
        }
        self.spacing = spacing
        super.init(dictionary: dictionary, viewController: viewController, tintColor: tintColor, isActionable: isActionable)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func depictionHeight(width: CGFloat) -> CGFloat {
        spacing
    }
}
