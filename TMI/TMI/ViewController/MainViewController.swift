//
//  MainViewController.swift
//  TMI
//
//  Created by 이동영 on 2019/12/14.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit
import SnapKit
import Then
import AttriBeauty

class MainViewController: UIViewController {
    
    // MARK: - UI
    
    private let albumsCollectionView = UICollectionView(frame: .zero,
                                                        collectionViewLayout: .init())
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpAttributes()
        setUpConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

// MARK: - Attributes

extension MainViewController {
    private func setUpAttributes() {
        self.view.do {
            $0.addSubview(albumsCollectionView)
        }
        
        albumsCollectionView.do {
            $0.dataSource = self
            $0.delegate = self
            $0.backgroundColor = .systemGray6
            $0.register(AlbumHeaderView.self,
                        forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                        withReuseIdentifier: AlbumHeaderView.reuseIdentifier)
            $0.register(AlbumCell.self, forCellWithReuseIdentifier: AlbumCell.reuseIdentifier)
            $0.collectionViewLayout = UICollectionViewFlowLayout().then {
                $0.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
                $0.minimumLineSpacing = 16
            }
        }
    }
}

// MARK: - Layouts

extension MainViewController {
    private func setUpConstraints() {
        albumsCollectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

// MARK: - UICollectionViewDataSource

extension MainViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(with: AlbumCell.self, for: indexPath) else {
            return AlbumCell()
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableHeaderView(of: AlbumHeaderView.self, for: indexPath) else {
            return AlbumHeaderView()
        }
        
        return header
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = (UIScreen.main.bounds.width - 48)/2
        return CGSize(width: side, height: side * 30.0/24.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let bounds = UIScreen.main.bounds
        return CGSize(width: bounds.width, height: bounds.height*1/5)
    }
}
