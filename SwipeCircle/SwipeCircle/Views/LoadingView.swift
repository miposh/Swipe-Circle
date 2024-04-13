//
//  LoadingView.swift
//  SwipeCircle
//
//  Created by Aist Maraby on 14.04.24.
//

import UIKit

class LoadingView: UIView {
    
    // MARK: – Properties
    
    private var backImageView: UIImageView!
    private var loadingCircleImageView: UIImageView!
    private var loadingTextImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    // MARK: – Setup UI
    
    private func setupUI() {
        createBackgroundImageView()
        createLoadingCircleImageView()
        createLoadingTextImageView()
    }
    
    private func createBackgroundImageView() {
        backImageView = UIImageView()
        backImageView.contentMode = .scaleAspectFill
        let image = UIImage(asset: .loadingScreenBackground)
        backImageView.image = image
        backImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(backImageView)
    }
    
    private func createLoadingCircleImageView() {
        loadingCircleImageView = UIImageView()
        loadingCircleImageView.contentMode = .scaleAspectFit
        let image = UIImage(asset: .loadingScreenCircle)
        loadingCircleImageView.image = image
        loadingCircleImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(loadingCircleImageView)
    }
    
    private func createLoadingTextImageView() {
        loadingTextImageView = UIImageView()
        loadingTextImageView.contentMode = .scaleAspectFit
        let image = UIImage(asset: .loadingScreenText)
        loadingTextImageView.image = image
        loadingTextImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(loadingTextImageView)
    }
    
    // MARK: – Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setConstraintsBackImageView()
        setConstraintsCircleImageView()
        setConstraintsTextImageView()
    }
    
    private func setConstraintsBackImageView() {
        NSLayoutConstraint.activate([
            backImageView.topAnchor.constraint(equalTo: self.topAnchor),
            backImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    private func setConstraintsCircleImageView() {
        NSLayoutConstraint.activate([
            loadingCircleImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loadingCircleImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 20),
            loadingCircleImageView.widthAnchor.constraint(equalToConstant: 100),
            loadingCircleImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setConstraintsTextImageView() {
        NSLayoutConstraint.activate([
            loadingTextImageView.heightAnchor.constraint(equalToConstant: 50),
            loadingTextImageView.widthAnchor.constraint(equalToConstant: 150),
            loadingTextImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loadingTextImageView.centerYAnchor.constraint(equalTo: self.loadingCircleImageView.bottomAnchor, constant: 20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
