//
//  MovieDetailsViewController.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 20/07/24.
//

import UIKit

class MoviesDetailsViewController: UIViewController {
    
    var movie: Movie
    
    private lazy var movieScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .white
        label.text = movie.title
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var moviePosterImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: movie.image))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var movieRateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Classificação dos usuários: \(movie.rate)"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    private lazy var movieSynopsisLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = movie.synopsis
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var movieStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [movieTitleLabel, moviePosterImageView, movieRateLabel, movieSynopsisLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 32
        stackView.alignment = .center
        return stackView
    }()

    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        setupContraints()
        view.backgroundColor = .background
    }
    
    private func addSubviews() {
        view.addSubview(movieScrollView)
        movieScrollView.addSubview(movieStackView)
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            movieScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            movieScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            movieScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            movieStackView.topAnchor.constraint(equalTo: movieScrollView.contentLayoutGuide.topAnchor),
            movieStackView.bottomAnchor.constraint(equalTo: movieScrollView.contentLayoutGuide.bottomAnchor),
            movieStackView.leadingAnchor.constraint(equalTo: movieScrollView.contentLayoutGuide.leadingAnchor),
            movieStackView.trailingAnchor.constraint(equalTo: movieScrollView.contentLayoutGuide.trailingAnchor),
            
            movieTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            movieTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            moviePosterImageView.heightAnchor.constraint(equalToConstant: 380),
            moviePosterImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            moviePosterImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            
            movieSynopsisLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            movieSynopsisLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),


        ])
    }
}
