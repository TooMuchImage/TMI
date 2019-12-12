//
//  EntryViewController.swift
//  TMI
//
//  Created by 이동영 on 2019/12/13.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit
import SnapKit
import Then

class EntryViewController: UIViewController {

    // MARK: - UI
    
    let logoImage = UIImageView()
    let guideLabel = UILabel()
    let startButton = UIButton()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpAttributes()
        setUpConstraints()
    }
}

// MARK: - Attributes

extension EntryViewController {
    private func setUpAttributes() {
        self.view.do {
            $0.addSubview(logoImage)
            $0.addSubview(guideLabel)
            $0.addSubview(startButton)
        }
        
        logoImage.do {
            $0.backgroundColor = .gray
        }
        
        guideLabel.do {
            $0.text = "사진을 정리해드릴까요?"
            $0.font = .boldSystemFont(ofSize: 17)
        }
        
        startButton.do {
            $0.setTitle("시작", for: .normal)
            $0.setTitleColor(.white, for: .normal)
            $0.backgroundColor = .black
            $0.layer.cornerRadius = 24
        }
    }
}

// MARK: - Layouts

extension EntryViewController {
    private func setUpConstraints() {
        logoImage.snp.makeConstraints {
            $0.width.equalTo(self.view.snp.width).dividedBy(3)
            $0.height.equalTo(logoImage.snp.width).multipliedBy(147.0/97.0)
            $0.top.equalToSuperview().offset(96)
            $0.leading.equalToSuperview().offset(24)
        }
        
        guideLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(startButton.snp.top).offset(-100)
        }
        
        startButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalTo(126)
            $0.height.equalTo(48)
            $0.bottom.equalToSuperview().inset(100)
        }
    }
}
