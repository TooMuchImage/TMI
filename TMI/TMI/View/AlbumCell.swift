//
//  AlbumView.swift
//  TMI
//
//  Created by 이동영 on 2019/12/14.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class AlbumCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.backgroundColor = .neonBlue
    }
    
    init() {
        super.init(frame: .zero)
        
        self.contentView.backgroundColor = .neonBlue
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.contentView.backgroundColor = .neonBlue
    }
}
