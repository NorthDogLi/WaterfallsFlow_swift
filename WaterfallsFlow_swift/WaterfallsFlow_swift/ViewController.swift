//
//  ViewController.swift
//  WaterfallsFlow_swift
//
//  Created by 李家奇_南湖国旅 on 2017/7/1.
//  Copyright © 2017年 李家奇_南湖国旅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let shopID : String = "shopID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        //布局
        let layout = NDCollectionView()
        
        
        //创建collectionView
        let collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
        view.addSubview(collectionView)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: shopID)
    }
    
}


extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: shopID, for: indexPath)
        
        cell.backgroundColor = UIColor.red
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}

