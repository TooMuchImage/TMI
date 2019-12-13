//
//  LoadingViewController.swift
//  TMI
//
//  Created by 이동영 on 2019/12/13.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit
import SnapKit
import Then

class LoadingViewController: UIViewController {

    // MARK: - UI
    
    let logoImageView = UIImageView()
    let loadingImageView = UIImageView()
    let messageLabel = UILabel()
    let gaugeView = GaugeView()
    let gaugeLabel = UILabel()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpAttributes()
        setUpConstraints()
    }
}

// MARK: - Attributes

extension LoadingViewController {
    private func setUpAttributes() {
        self.view.do {
            $0.addSubview(logoImageView)
            $0.addSubview(loadingImageView)
            $0.addSubview(messageLabel)
            $0.addSubview(gaugeView)
            $0.addSubview(gaugeLabel)
        }
        
        logoImageView.do {
            $0.backgroundColor = .gray
        }
        
        loadingImageView.do {
            $0.backgroundColor = .gray
        }
        
        messageLabel.do {
            $0.numberOfLines = 2
            $0.text = "갤러리의 스크린샷을\n정리하고 있어요"
            $0.font = .boldSystemFont(ofSize: 22)
            $0.textAlignment = .center
        }
        
        gaugeView.do {
            $0.backgroundColor = .neonBlue
        }
        
        gaugeLabel.do {
            $0.text = "20%"
            $0.font = .systemFont(ofSize: 14)
            $0.textAlignment = .center
        }
    }
}

// MARK: - Layouts

extension LoadingViewController {
    private func setUpConstraints() {
        logoImageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(self.view.bounds.height * 4/100)
            $0.height.equalTo(self.view.bounds.height * 5/100)
            $0.width.equalTo(logoImageView.snp.height)
        }
        
        loadingImageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview().dividedBy(3)
            $0.top.equalToSuperview().inset(self.view.bounds.height * 1/4)
            $0.width.equalTo(loadingImageView.snp.height)
        }
        
        messageLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        gaugeView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(messageLabel.snp.bottom).offset(self.view.bounds.height * 3/100)
            $0.width.equalToSuperview().inset(self.view.bounds.width * 6/100)
            $0.height.equalToSuperview().dividedBy(100)
        }
        
        gaugeLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(gaugeView.snp.bottom).offset(self.view.bounds.height * 2/100)
        }
    }
}
        
    }
}
