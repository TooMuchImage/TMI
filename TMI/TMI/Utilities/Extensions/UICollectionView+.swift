//
//  UICollectionView+.swift
//  TMI
//
//  Created by 이동영 on 2019/12/15.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func dequeueReusableCell<Cell: Reusable>(with type: Cell.Type, for indexPath: IndexPath) -> Cell? {
        return dequeueReusableCell(withReuseIdentifier: type.reuseIdentifier, for: indexPath) as? Cell
    }
    
    func dequeueReusableHeaderView<Header: Reusable>(of type: Header.Type, for indexPath: IndexPath) -> Header? {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                withReuseIdentifier: Header.reuseIdentifier,
                                                for: indexPath) as? Header
    }
}

