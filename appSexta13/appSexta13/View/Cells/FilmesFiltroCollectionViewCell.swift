//
//  FilmesFiltroCollectionViewCell.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class FilmesFiltroCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var posterFilme: UIImageView!
    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    
    
    func cellConfig(_ filme: Filme){
        posterFilme.image = filme.posterFilme
        nomeFilmeLabel.text = filme.nomeFilme
    }
}
