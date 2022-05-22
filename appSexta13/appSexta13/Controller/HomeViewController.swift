//
//  HomeViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var filmesHomeCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        filmesHomeCollectionView.dataSource = self
        filmesHomeCollectionView.delegate = self
        

    }
    

   

}
//MARK: - CollectionView DataSource
extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        return UICollectionViewCell()
        
    }
    
}
//MARK: - CollectionView Delegate
extension HomeViewController: UICollectionViewDelegate {

    
    
}
