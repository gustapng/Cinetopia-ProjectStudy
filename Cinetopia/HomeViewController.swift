//
//  ViewController.swift
//  Cinetopia
//
//  Created by Gustavo Ferreira dos Santos on 15/07/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello, world!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        
        addSubviews()
        setupContraints()
    }
    
    private func addSubviews() {
        view.addSubview(label)

    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),   
        ])
    }

}

