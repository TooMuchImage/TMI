//
//  UIView+.swift
//  TMI
//
//  Created by 이동영 on 2020/01/10.
//  Copyright © 2020 cmindy. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview(_:))
    }
}
