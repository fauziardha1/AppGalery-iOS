//
//  ViewController.swift
//  AppGalery-iOS
//
//  Created by FauziArda on 11/02/23.
//

import UIKit

class Main: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = appTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setCollectionView()
    }

    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let apps = AppsMock.data
    
    func setCollectionView(){
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ApplicationMenu.self, forCellWithReuseIdentifier: ApplicationMenu.identifier)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }

}

