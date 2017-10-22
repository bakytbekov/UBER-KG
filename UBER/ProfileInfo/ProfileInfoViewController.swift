//
//  ProfileInfoViewController.swift
//  UBER
//
//  Created by ZYFAR on 21.10.17.
//  Copyright © 2017 NeoBis. All rights reserved.
//

import UIKit

class ProfileInfoViewController: UIViewController {
    
    var names = ["Мира Ким" , "Бектен Аманов" , "Алим Беков"]
    var dates = ["12/10/17  15:32" , "15/10/17  22:32" , "30/09/17  00:59"]
    var price = ["100" , "200" , "400"]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Истории"
    }
}

extension ProfileInfoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return price.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileInfoCollectionViewCell", for: indexPath) as! ProfileInfoCollectionViewCell
        cell.nameLbl.text = names[indexPath.row]
        cell.dateLbl.text = dates[indexPath.row]
        cell.statusLbl.text = price[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width - 30
        return CGSize(width: width, height: 130)
    }
}
