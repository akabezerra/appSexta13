//
//  AmigoTableViewCell.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class AmigoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var fotoAmigo: UIImageView!
    
    
    @IBOutlet weak var nomeAmigoLabel: UILabel!
    @IBOutlet weak var quantidadeEmComumLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func cellConfig(_ amigo: Amigo){
        
        fotoAmigo.image = amigo.fotoAmigo
        nomeAmigoLabel.text = amigo.nomeAmigo
        quantidadeEmComumLabel.text = String(amigo.filmesQueGosto.count)
        
    }

}
