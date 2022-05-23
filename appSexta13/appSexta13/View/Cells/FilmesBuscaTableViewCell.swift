//
//  FilmesTableViewCell.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class FilmesBuscaTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var posterFilme: UIImageView!
    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func cellConfig(_ filme: Filme){
        posterFilme.image = filme.posterFilme
        nomeFilmeLabel.text = filme.nomeFilme
    }
    

}
