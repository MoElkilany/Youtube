//
//  HomeVC.swift
//  Youtube
//
//  Created by mohamed sayed on 12/6/20.
//

import UIKit

class HomeVC: UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    let cellID = "CellID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                collectionConfigration()
    }
    
    fileprivate func collectionConfigration(){
        collectionView.backgroundColor = .white
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    fileprivate func customNavigationBarTitle(){
        
        let titleLable = UILabel(frame:CGRect(x: 0, y: 0, width: view.frame.width - 16 , height: view.frame.height))
        titleLable.text = "Home"
        titleLable.font = UIFont.systemFont(ofSize: 20)
        titleLable.textColor = .white
        navigationItem.titleView = titleLable
        navigationController?.navigationBar.isTranslucent = false
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

