//
//  FilmeMock.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 22/05/22.
//

import UIKit

enum Filmes {
    
    static let exorcismoEm: Filme = Filme(
        posterFilme: UIImage(named: "exorcismo_em"),
        nomeFilme: "Exorcismo de Emily Rose",
        anoFilme: "2005",
        descricaoFilme: "A jovem estudante Emily Rose começa a alucinar e ter surtos cada vez mais frequentes, que causam perda de memória. Católica praticante, ela aceita ser submetida a uma sessão de exorcismo. Quem a realiza é o sacerdote de sua paróquia, o padre Richard Moore. Porém, Emily morre durante o exorcismo, o que faz com que o padre seja acusado de assassinato. A advogada Erin Bruner aceita pegar a defesa do padre e argumenta que a condição de Emily não pode ser explicada somente pela ciência.",
        classificacaoIndicativa: 16
    )
    
    static let hereditario = Filme(
        posterFilme: UIImage(named: "hereditario"),
        nomeFilme: "Hereditario",
        anoFilme: "2018",
        descricaoFilme: "Após a morte da reclusa avó, a família Graham começa a desvendar algumas coisas. Mesmo após a partida da matriarca, ela permanece como se fosse uma sombra sobre a família, especialmente sobre a solitária neta adolescente, Charlie, por quem ela sempre manteve uma fascinação não usual. Com um crescente terror tomando conta da casa, a família explora lugares mais escuros para escapar do infeliz destino que herdaram.",
        classificacaoIndicativa: 16)
    
    static let albergue = Filme(
            posterFilme: UIImage(named: "albergue"),
            nomeFilme: "O Albergue",
            anoFilme: "0000",
            descricaoFilme: "descricao",
            classificacaoIndicativa: 14
    )
    
    static let orfa = Filme(
            posterFilme: UIImage(named: "orfa"),
            nomeFilme: "A Orfã",
            anoFilme: "0000",
            descricaoFilme: "descricao",
            classificacaoIndicativa: 12
    )
    
    static let invocacao = Filme(
            posterFilme: UIImage(named: "evocacao"),
            nomeFilme: "Invocação do Mal",
            anoFilme: "0000",
            descricaoFilme: "descricao",
            classificacaoIndicativa: 16
    )
    static let annabele = Filme(
        posterFilme: UIImage(named: "annabele"),
        nomeFilme: "Annabele",
        anoFilme: "0000",
        descricaoFilme: "descricao",
        classificacaoIndicativa: 18
    )
    
}
