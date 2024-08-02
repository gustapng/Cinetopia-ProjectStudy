//
//  Movie.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 20/07/24.
//

import Foundation

struct Movie: Decodable {
    let id: String
    let title: String
    let image: String
    let synopsis: String
    let rate: Double
    let releaseDate: String
}

let movies: [Movie] = [
    Movie(id: "1", title: "Interstellar", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar.jpg?raw=true", synopsis: "Pragas nas colheitas fizeram a civilização humana regredir para uma sociedade agrária em futuro de data desconhecida. Cooper, ex-piloto da NASA, tem uma fazenda com sua família. Murphy, a filha de dez anos de Cooper, acredita que seu quarto está assombrado por um fantasma que tenta se comunicar com ela. Pai e filha descobrem que o \"fantasma\" é uma inteligência desconhecida que está enviando mensagens codificadas através de radiação gravitacional, deixando coordenadas em binário que os levam até uma instalação secreta da NASA liderada pelo professor John Brand.", rate: 9.4, releaseDate: "06/11/2024"),
    Movie(id: "2", title: "Harry Potter e o cálice de fogo", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar.jpg?raw=true", synopsis: "Harry Potter e seus amigos, Rony Weasley e Hermione Granger, acompanham o pai de Rony, Arthur Weasley, e seus irmãos Gina, Fred e Jorge, à Copa Mundial de Quadribol, onde os garotos conhecem Cedrico Diggory, um popular aluno de Hogwarts. Entretanto, logo após o primeiro jogo, o lugar é atacado por Comensais da Morte, os antigos servos de Lord Voldemort, que destroem o acampamento.", rate: 9.2, releaseDate: "26/11/2024"),
    Movie(id: "3", title: "Shrek", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar.jpg?raw=true", synopsis: "Shrek, um temido e aterrorizante ogro verde que ama a solidão em seu pântano, vê sua vida interrompida quando diversas criaturas de contos de fada são exiladas para lá por ordem do maligno Lorde Farquaad. Shrek anuncia que irá conversar com Farquaad para mandá-los de volta ao seus lugares de origem. Ele leva consigo um Burro tagarela e animado que conheceu junto às criaturas. ", rate: 9.8, releaseDate: "22/06/2001")
]
