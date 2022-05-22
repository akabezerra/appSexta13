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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
