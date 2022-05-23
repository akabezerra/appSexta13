//
//  HomeViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var filmesHomeCollectionView: UICollectionView!
    
    let serviceFilmes = ServiceFilmes()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        filmesHomeCollectionView.dataSource = self
        filmesHomeCollectionView.delegate = self
        

    }
    

   

}
//MARK: - CollectionView DataSource
extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        serviceFilmes.trazListaDeFilmes().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let filme = serviceFilmes.trazListaDeFilmes()[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmeCell", for: indexPath) as? FilmesHomeCollectionViewCell
        
        cell?.nomeFilmeLabel.text = filme.nomeFilme
        cell?.posterFilme.image = filme.posterFilme
        
        
        return cell ?? UICollectionViewCell()
        
    }
    
}
//MARK: - CollectionView Delegate
extension HomeViewController: UICollectionViewDelegate {

    
}
