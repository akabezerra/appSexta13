//
//  InfoAmigoViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 22/05/22.
//

import UIKit

class InfoAmigoViewController: UIViewController {
    
    @IBOutlet weak var fotoAmigo: UIImageView!
    @IBOutlet weak var nomeAmigo: UILabel!
    
    @IBOutlet weak var filmesEmComumCollectionView: UICollectionView!
  
    var amigo: Amigo?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmesEmComumCollectionView.dataSource = self
        filmesEmComumCollectionView.delegate = self
        fotoAmigo.image = amigo?.fotoAmigo
        nomeAmigo.text = amigo?.nomeAmigo
    }
    
    func configInfoAmigo(_ amigo: Amigo){
        self.amigo = amigo
        
    }
    
}

extension InfoAmigoViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        amigo?.filmesQueGosto.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let filme = amigo?.filmesQueGosto[indexPath.row], let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmesCell", for: indexPath) as? FilmesAmigoCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.cellConfig(filme)
        return cell
    }
    
    
    
}
