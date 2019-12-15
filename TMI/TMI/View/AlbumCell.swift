//
//  AlbumView.swift
//  TMI
//
//  Created by 이동영 on 2019/12/14.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class AlbumCell: UICollectionViewCell {
    
    // MARK: - UI
    
    let titleImageView = UIImageView()
    let titleLabel = UILabel()
    let countLabel = UILabel()
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpAttributes()
        setUpConstraints()
    }
    
    init() {
        super.init(frame: .zero)
        
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

extension AlbumCell {
    private func setUpAttributes() {
        self.contentView.do {
            $0.addSubview(titleImageView)
            $0.addSubview(titleLabel)
            $0.addSubview(countLabel)
        }
        
        titleImageView.do {
            $0.backgroundColor = .gray
            $0.layer.cornerRadius = 8
            $0.layer.shadowOffset = CGSize(width: 5, height: 5)
            $0.layer.shadowRadius = 5
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 0.2
        }
        
        titleLabel.do {
            $0.attributedText = ["Instagram", "Facebook", "KakaoTalk"].randomElement()?
                .beautify
                .attriBeauty
                .font(.systemFont(ofSize: 16))
                .align(.left)
                .apply()
        }
        
        countLabel.do {
            $0.attributedText = Int.random(in: 0...300).description
                .beautify
                .attriBeauty
                .font(.systemFont(ofSize: 14))
                .fgColor(.lightGray)
                .align(.left)
                .apply()
        }
    }
}

// MARK: - Layouts

extension AlbumCell {
    private func setUpConstraints() {
        titleImageView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(titleImageView.snp.width)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalTo(titleImageView)
            $0.top.equalTo(titleImageView.snp.bottom).offset(8)
        }
        
        countLabel.snp.makeConstraints {
            $0.leading.trailing.equalTo(titleImageView)
            $0.top.equalTo(titleLabel.snp.bottom).offset(2)
        }
    }
}
