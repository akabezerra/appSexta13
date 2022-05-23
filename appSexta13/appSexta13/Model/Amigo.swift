//
//  Amigo.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import Foundation
import UIKit

class Amigo {
    let nomeAmigo: String
    let fotoAmigo: UIImage?
    let filmesQueGosto: [Filme]
    
    init(
        nomeAmigo: String,
        fotoAmigo: UIImage?,
        filmesQueGosto: [Filme]
    ) {
        self.nomeAmigo = nomeAmigo
        self.fotoAmigo = fotoAmigo
        self.filmesQueGosto = filmesQueGosto
    }
    
    
    
}
