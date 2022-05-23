//
//  DetalhesFilmeViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 23/05/22.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    //MARK: - IBOUTLETS

    @IBOutlet weak var posterFilme: UIImageView!
    
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    @IBOutlet weak var anoFilmeLabel: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    
    var filme: Filme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        atribuirInfosDoFilme()
    }
    //MARK: - Funções privadas
   private func atribuirInfosDoFilme(){
        posterFilme.image = filme?.posterFilme
        nomeFilmeLabel.text = filme?.nomeFilme
        anoFilmeLabel.text = filme?.anoFilme
        descricaoFilme.text = filme?.descricaoFilme
        
    }
    //MARK: - Funções públicas
    func configVc(_ filme: Filme?){
        
        self.filme = filme
    }
}
