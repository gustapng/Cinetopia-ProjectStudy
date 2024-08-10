//
//  MoviesViewController.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 18/07/24.
//

import UIKit

protocol MoviesViewControllerToPresenterProtocol: AnyObject {
    func didSelectMovie(_ movie: Movie)
}

class MoviesViewController: UIViewController {
    
    private var presenter: MoviesPresenterToViewControllerProtocol?
    
    private var mainView: MoviesView?
    
    init(view: MoviesView, presenter: MoviesPresenterToViewControllerProtocol) {
        super.init(nibName: "", bundle: nil)
        self.mainView = view
        self.presenter = presenter
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setViewController(self)
        presenter?.viewDidLoad()
        setupNavigationBar()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidAppear()
    }
    
    private func setupNavigationBar() {
        title = "Filmes populares"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationItem.setHidesBackButton(true, animated: true)
        navigationItem.titleView = mainView?.searchBar
    }
}

extension MoviesViewController: MoviesViewControllerToPresenterProtocol {
    func didSelectMovie(_ movie: Movie) {
        let detailsVC = MoviesDetailsViewController(movie: movie)
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}
