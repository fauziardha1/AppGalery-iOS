//
//  ApplicationMenu.swift
//  AppGalery-iOS
//
//  Created by FauziArda on 11/02/23.
//

import Foundation
import UIKit

class ApplicationMenu: UICollectionViewCell {
    static let identifier = "ApplicationMenuID"
    
    lazy var appLogo : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "app.badge.fill")
        return imageView
    }()
    
    lazy var appName : UILabel = {
        let label = UILabel()
        
        label.text = "App 1"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 12.0)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(appLogo)
        contentView.addSubview(appName)
        contentView.layer.cornerRadius = 12
        
        NSLayoutConstraint.activate([
            appLogo.topAnchor.constraint(equalTo: contentView.topAnchor),
            appLogo.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            appLogo.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8),
            appLogo.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8),
            
            appName.topAnchor.constraint(equalTo: appLogo.bottomAnchor),
            appName.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            appName.widthAnchor.constraint(equalTo: contentView.widthAnchor)
            
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        appLogo.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
