//
//  MoviesViewController.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 18/07/24.
//

import UIKit

class MoviesViewController: UIViewController {
    
    private let movieService: MovieService = MovieService()
    
    private lazy var mainView: MoviesView = {
        let mainView = MoviesView()
        return mainView
    }()
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        Task {
            await fetchMovies()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    private func fetchMovies() async {
        do {
            let movies = try await movieService.getMovies()
            tableView.reloadData()
        } catch (let error) {
            print(error)
        }
    }
    
    private func setupNavigationBar() {
        title = "Filmes populares"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationItem.setHidesBackButton(true, animated: true)
        navigationItem.titleView = mainView.searchBar
    }
    
    extension MoviesViewController: UISearchBarDelegate {
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//            if searchText.isEmpty {
//                isSearchActive = false
//            } else {
//                isSearchActive = true
//                filteredMovies = movies.filter({ movie in
//                    movie.title.lowercased().contains(searchText.lowercased())
//                })
//            }
//            tableView.reloadData()
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()
        }
    }
}
