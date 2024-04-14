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
        addSubview(backImageView)
    }
    
    private func createLoadingCircleImageView() {
        loadingCircleImageView = UIImageView()
        loadingCircleImageView.contentMode = .scaleAspectFit
        let image = UIImage(asset: .loadingScreenCircle)
        loadingCircleImageView.image = image
        addSubview(loadingCircleImageView)
    }
    
    private func createLoadingTextImageView() {
        loadingTextImageView = UIImageView()
        loadingTextImageView.contentMode = .scaleAspectFit
        let image = UIImage(asset: .loadingScreenText)
        loadingTextImageView.image = image
        addSubview(loadingTextImageView)
    }
    
    // MARK: – Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setFrameBackImageView()
        setFrameCircleImageView()
        setFrameTextImageView()
    }
    
    private func setFrameBackImageView() {
        backImageView.frame = self.frame
    }
    
    private func setFrameCircleImageView() {
        let centerX = self.bounds.width / 2
        let centerY = self.bounds.height / 2 + 20 // +20 для смещения вниз
        let size: CGFloat = 100
        let offset: CGFloat = size / 2
        
        loadingCircleImageView.frame = CGRect(x: centerX - offset, y: centerY - offset, width: size, height: size)
    }
    
    private func setFrameTextImageView() {
        let centerX = self.bounds.width / 2
        let centerY = loadingCircleImageView.frame.maxY + 20
        
        loadingTextImageView.frame = CGRect(x: centerX - 75, y: centerY - 25, width: 150, height: 50)
    }
    
    // MARK: – Animation
    
    func animateBall() {
        let centerX = self.bounds.width / 2
        let centerY = self.bounds.height / 2 + 20 // +20 для смещения вниз
        let size: CGFloat = 100
        let offset: CGFloat = size / 2
        
        UIView.animate(withDuration: 1.2, delay: 0.5, options: .curveEaseOut) {
            self.loadingCircleImageView.frame = CGRect(x: centerX - offset, y: centerY - offset - 100, width: size, height: size)
        } completion: {_ in
            UIView.animate(withDuration: 1.2, delay: 0.1, options: .curveEaseInOut) {
                self.loadingCircleImageView.frame = CGRect(x: centerX - offset, y: centerY - offset, width: size, height: size)
            } completion: { _ in
                UIView.animate(withDuration: 1.2, delay: 0.1, options: .curveEaseInOut) {
                    self.loadingCircleImageView.frame = CGRect(x: centerX - offset, y: centerY - offset - 50, width: size, height: size)
                }
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
