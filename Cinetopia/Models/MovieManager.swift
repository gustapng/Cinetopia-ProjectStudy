//
//  MovieManager.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 05/08/24.
//

import Foundation

class MovieManager {
    
    // MARK: - Attributes
    
    static let shared = MovieManager()
    var favoritesMovies: [Movie] = []
    
    // MARK: - Init
    
    private init() { }
    
    // MARK: - Class methods
    
    func add(_ movie: Movie) {
        if favoritesMovies.contains(where: { $0.id == movie.id}) {
            remove(movie)
        } else {
            favoritesMovies.append(movie)
        }
    }
    
    func remove(_ movie: Movie) {
        if let index = favoritesMovies.firstIndex(where: {$0.id == movie.id}) {
            favoritesMovies.remove(at: index)
        }
    }
}
