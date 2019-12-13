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
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setUpAttributes()
    }
}

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
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


}
