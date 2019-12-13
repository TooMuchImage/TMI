//
//  SnapKit+.swift
//  TMI
//
//  Created by 이동영 on 2019/12/13.
//  Copyright © 2019 cmindy. All rights reserved.
//

import SnapKit

extension ConstraintMakerEditable {
    
    @discardableResult
    func aspectRatio(_ x: CGFloat, _ y: CGFloat) -> ConstraintMakerEditable {
        return self.multipliedBy(x/y)
    }
}
