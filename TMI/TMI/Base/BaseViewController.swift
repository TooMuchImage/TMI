//
//  ViewController.swift
//  TMI
//
//  Created by CHOMINJI on 2019/11/28.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Initialization
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialize()
    }
    
    func initialize() {}
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    // MARK: - Set up
    
    func setUpLayout() {}
    func setUpAttribute() {}
}

