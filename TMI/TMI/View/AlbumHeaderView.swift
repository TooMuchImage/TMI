//
//  AlbumHeaderView.swift
//  TMI
//
//  Created by 이동영 on 2019/12/15.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class AlbumHeaderView: UICollectionReusableView {
    
    // MARK: - UI
    
    private let message1Label = UILabel()
    private let message2Label = UILabel()
    private let refreshButton = UIButton()
    
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialization()
    }
    
    convenience init() {
        self.init(frame: .zero)
        
        initialization()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialization()
    }
    
    func initialization() {
        setUpLayout()
        setUpAttribute()
    }
    
    // MARK: - Life Cycle
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            self.refreshButton.layer.cornerRadius = self.refreshButton.bounds.width / 2
        }
    }
}

// MARK: - Attributes

extension AlbumHeaderView {
    private func setUpAttribute() {
        
        message1Label.do{
            $0.attributedText = "602개의 스크린샷을"
                .beautify
                .attriBeauty
                .fgColor(.black)
                .fgColor(App.Color.neonBlue).regex("[0-9+]+개")
                .font(.boldSystemFont(ofSize: 23))
                .apply()
        }
        
        message2Label.do{
            $0.attributedText = "정리해드렸어요"
                .beautify
                .attriBeauty
                .fgColor(.black)
                .font(.boldSystemFont(ofSize: 23))
                .apply()
        }
        
        refreshButton.do {
            $0.backgroundColor = .black
            $0.setBackgroundImage(App.Icon.reset, for: .normal)
        }
    }
}

// MARK: - Layouts

extension AlbumHeaderView {
    private func setUpLayout() {
        self.addSubviews(message1Label, message2Label, refreshButton)
        
        message1Label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(self.bounds.width * 4/100)
            $0.top.equalToSuperview().offset(self.bounds.height * 40/100)
        }
        
        message2Label.snp.contentHuggingVerticalPriority = 1000
        message2Label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(self.bounds.width * 4/100)
            $0.top.equalTo(message1Label.snp.bottom)
            $0.height.equalTo(message1Label)
        }
        
        refreshButton.snp.contentCompressionResistanceHorizontalPriority = 300
        refreshButton.snp.makeConstraints {
            $0.leading.equalTo(message2Label.snp.trailing).offset(10)
            $0.centerY.equalTo(message2Label)
            $0.height.equalTo(message2Label.snp.height).aspectRatio(4, 5)
            $0.width.equalTo(refreshButton.snp.height)
        }
        
    }
}
