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
                    FilmeMock.orfa,
                    FilmeMock.hereditario
                ]
            ),
            Amigo(
                nomeAmigo: "Bilica",
                fotoAmigo: UIImage(named: "avatar"),
                filmesQueGosto: [
                    FilmeMock.evocacao,
                    FilmeMock.annabele
                ]
            )
        ]
        
    }
}
