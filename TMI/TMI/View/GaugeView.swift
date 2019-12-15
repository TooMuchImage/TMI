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
    
    private let progressView = UIView()
    
    
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
            $0.addSubview(progressView)
            $0.backgroundColor = .loadingGray
        }
        
        progressView.do {
            $0.backgroundColor = .loadingCyan
        }
    }
}

// MARK: - Layouts

extension GaugeView {
    private func setUpConstraints() {
        progressView.snp.makeConstraints {
            $0.leading.top.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0)
        }
    }
}

// MARK: - Configure

extension GaugeView {
    func configure(percent: CGFloat) {
        progressView.snp.remakeConstraints {
            $0.leading.top.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(percent)
        }
    }
}
