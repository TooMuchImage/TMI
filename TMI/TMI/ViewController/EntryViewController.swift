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
    
    let logoImageView = UIImageView()
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
            $0.addSubview(logoImageView)
            $0.addSubview(guideLabel)
            $0.addSubview(startButton)
        }
        
        logoImageView.do {
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
        logoImageView.snp.makeConstraints {
            $0.width.equalTo(self.view.safeAreaLayoutGuide).dividedBy(3)
            $0.height.equalTo(logoImageView.snp.width).aspectRatio(147,97)
            $0.top.equalToSuperview().inset(self.view.bounds.height * 14/100)
            $0.leading.equalToSuperview().inset(self.view.bounds.width * 6/100)
        }
        
        guideLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(self.view.bounds.height * 70/100)
        }
        
        startButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview().dividedBy(3)
            $0.height.equalTo(startButton.snp.width).aspectRatio(48, 126)
            $0.bottom.equalToSuperview().inset(self.view.bounds.height * 15/100)
        }
    }
}
