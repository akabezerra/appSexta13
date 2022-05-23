//
//  FilmesAmigoCollectionViewCell.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 22/05/22.
//

import UIKit

class FilmesAmigoCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var posterFilme: UIImageView!
    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    
    
    func cellConfig(_ filme: Filme){
        posterFilme.image = filme.posterFilme
        nomeFilmeLabel.text = filme.nomeFilme
    }
    
}
