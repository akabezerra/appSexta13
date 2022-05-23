//
//  DetalhesFilmeViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 23/05/22.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    @IBOutlet weak var posterFilme: UIImageView!
    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    @IBOutlet weak var anoFilmeLabel: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    
    var filme: Filme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        atribuirInfo()
    }
    
   private func atribuirInfo(){
        posterFilme.image = filme?.posterFilme
        nomeFilmeLabel.text = filme?.nomeFilme
        anoFilmeLabel.text = filme?.anoFilme
        descricaoFilme.text = filme?.descricaoFilme
        
    }
    
    func configVc(_ filme: Filme?){
        
        self.filme = filme
    }
    
    

    

}
