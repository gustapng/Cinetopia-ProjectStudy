//
//  TabBarController.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 03/08/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        setupTabBarController()
    }
    
    // MARK: - Class methods
    
    private func setupTabBarController() {
        let symbolConfiguration = UIImage.SymbolConfiguration(scale: .medium)
        
        let home = UINavigationController(rootViewController: MoviesViewController())
        let homeSymbol = UIImage(systemName: "film", withConfiguration: symbolConfiguration)
        home.tabBarItem.image = homeSymbol
        home.tabBarItem.title = "Filmes populares"
        
        let favorites = UINavigationController(rootViewController: FavoriteMoviesViewController())
        let heartSymbol = UIImage(systemName: "heart", withConfiguration: symbolConfiguration)
        favorites.tabBarItem.image = heartSymbol
        favorites.tabBarItem.title = "Favoritos"
        
        self.setViewControllers([home, favorites], animated: true)
    }
}
