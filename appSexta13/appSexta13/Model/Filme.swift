//
//  File.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import Foundation
import UIKit

class Filme {
    let posterFilme: UIImage?
    let nomeFilme: String
    let anoFilme: String
    let descricaoFilme: String
    let classificacaoIndicativa: Int
    
    init(posterFilme: UIImage?, nomeFilme: String, anoFilme: String, descricaoFilme: String, classificacaoIndicativa: Int) {
        self.posterFilme = posterFilme
        self.nomeFilme = nomeFilme
        self.anoFilme = anoFilme
        self.descricaoFilme = descricaoFilme
        self.classificacaoIndicativa = classificacaoIndicativa
    }
}
