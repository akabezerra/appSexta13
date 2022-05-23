//
//  ServiceAmigos.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 22/05/22.
//

import Foundation
import UIKit


class ServiceAmigos {
    
    func trazListaAmigos() -> [Amigo]{
        
        return[
            Amigo(
                nomeAmigo: "Renato Mendes",
                fotoAmigo: UIImage(named: "avatar"),
                filmesQueGosto: [
                    Filmes.orfa,
                    Filmes.hereditario,
                    Filmes.exorcismoEm
                ]
            ),
            Amigo(
                nomeAmigo: "Bilica",
                fotoAmigo: UIImage(named: "avatar"),
                filmesQueGosto: [
                    Filmes.invocacao,
                    Filmes.annabele,
                    Filmes.albergue
                ]
            )
        ]
        
    }
}
