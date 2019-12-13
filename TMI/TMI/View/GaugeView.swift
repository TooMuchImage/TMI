//
//  GaugeView.swift
//  TMI
//
//  Created by 이동영 on 2019/12/14.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class GaugeView: UIView {
    
    // MARK: - UI
    
    private let filedView = UIView()
    
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpAttributes()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setUpAttributes()
        setUpConstraints()
    }
}

// MARK: - Attributes

extension GaugeView {
    private func setUpAttributes() {
        self.do {
            $0.addSubview(filedView)
            $0.backgroundColor = .loadingGray
        }
        
        filedView.do {
            $0.backgroundColor = .loadingCyan
        }
    }
}

// MARK: - Layouts

extension GaugeView {
    private func setUpConstraints() {
        filedView.snp.makeConstraints {
            $0.leading.top.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0)
        }
    }
}

}
