//
//  MainExtensions.swift
//  AppGalery-iOS
//
//  Created by FauziArda on 11/02/23.
//

import Foundation
import UIKit

extension Main : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.apps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ApplicationMenu.identifier, for: indexPath) as! ApplicationMenu
        
//        cell.movieName.text = self.movies[indexPath.row].title
//        cell.imageView.load(url: URL(string: imageBaseUrl + self.movies[indexPath.row].posterPath!)!)
        cell.appName.text = self.apps[indexPath.row].appName ?? "App Name"
        cell.appLogo.image = UIImage(systemName: self.apps[indexPath.row].appLogo ?? "app.badge.fill")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.frame.size.width/5, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(self.apps[indexPath.row].appName ?? "App" , " Do something on this selected app!")
    }
    
    
}
