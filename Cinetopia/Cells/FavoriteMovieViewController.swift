//
//  FavoriteMovieViewController.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 29/07/24.
//

import UIKit
import Kingfisher

class FavoriteMovieViewController: UIViewController {
    
    let movie = Movie(id: "1", title: "Interstellar", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar.jpg?raw=true", synopsis: "Pragas nas colheitas fizeram a civilização humana regredir para uma sociedade agrária em futuro de data desconhecida. Cooper, ex-piloto da NASA, tem uma fazenda com sua família. Murphy, a filha de dez anos de Cooper, acredita que seu quarto está assombrado por um fantasma que tenta se comunicar com ela. Pai e filha descobrem que o \"fantasma\" é uma inteligência desconhecida que está enviando mensagens codificadas através de radiação gravitacional, deixando coordenadas em binário que os levam até uma instalação secreta da NASA liderada pelo professor John Brand.", rate: 9.4, releaseDate: "06/11/2024")
    
    // MARK: - UI Components
    
    private let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var moviePosterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    //MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        addSubviews()
        setupContraints()
        setupView(movie)
    }
    
    //MARK: - Class methods
    
    private func addSubviews() {
        view.addSubview(mainView)
        mainView.addSubview(moviePosterImageView)
    }

    private func setupContraints() {
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        mainView.widthAnchor.constraint(equalToConstant: 115).isActive = true
        
        //UTILIZANDO OUTRA MANEIRA DE DEFINIR CONSTRAINTS PARA FINS DE ESTUDO
        NSLayoutConstraint.activate([
            moviePosterImageView.topAnchor.constraint(equalTo: mainView.topAnchor),
            moviePosterImageView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            moviePosterImageView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            moviePosterImageView.heightAnchor.constraint(equalToConstant: 140),
        ])
    }
    
    func setupView(_ movie: Movie) {
        let url = URL(string: movie.image)
        moviePosterImageView.kf.setImage(with: url)
    }
}

#Preview {
    FavoriteMovieViewController()
}
