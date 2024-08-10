//
//  MoviesInteractors.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 10/08/24.
//

import Foundation

protocol MoviesPresenterToInteractorProtocol: AnyObject {
    func fetchMovies() async throws -> [Movie]
}

class MoviesInteractor: MoviesPresenterToInteractorProtocol {
    
    private var movieService: MovieService = MovieService()

    func fetchMovies() async throws -> [Movie] {
        do {
            let movies = try await movieService.getMovies()
            return movies
        } catch (let error) {
            throw error
        }
    }
}
