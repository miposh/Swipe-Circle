//
//  MainView.swift
//  SwipeCircle
//
//  Created by Aist Maraby on 13.04.24.
//

import UIKit

class HomeView: UIView {
    
    // MARK: – Properties
    
    private var backImageView: UIImageView!
    private var onPlayButton: UIButton!
    private var onPrivacyButton: UIButton!
    private var doodletoon: UIImageView!
    
    var onPlayButtonTapped: (() -> Void)?
    var onPrivateButtonTapped: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: — Setup UI
    
    private func setupUI() {
        createBackImageView()
        createPlayButton()
        createPrivacyButton()
        createDoodletoon()
    }
    
    private func createBackImageView() {
        backImageView = UIImageView()
        backImageView.contentMode = .scaleAspectFill
        let image = UIImage(asset: .mainScreenBackground)
        backImageView.image = image
        backImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(backImageView)
    }
    
    private func createPlayButton() {
        onPlayButton = UIButton()
        let image = UIImage(asset: .mainScreenPlayButton)
        onPlayButton.setBackgroundImage(image, for: .normal)
        onPlayButton.subviews.first?.contentMode = .scaleAspectFit
        onPlayButton.addTarget(self, action: #selector(didTapPlayButton), for: .touchUpInside)
        onPlayButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(onPlayButton)
    }
    
    private func createPrivacyButton() {
        onPrivacyButton = UIButton()
        let image = UIImage(asset: .mainScreenPrivacyButton)
        onPrivacyButton.setBackgroundImage(image, for: .normal)
        onPrivacyButton.subviews.first?.contentMode = .scaleAspectFit
        onPrivacyButton.addTarget(self, action: #selector(didTapPrivacyButton), for: .touchUpInside)
        onPrivacyButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(onPrivacyButton)
    }
    
    private func createDoodletoon() {
        doodletoon = UIImageView()
        doodletoon.contentMode = .scaleAspectFit
        let image = UIImage(asset: .mainScreenDoodletoon)
        doodletoon.image = image
        doodletoon.translatesAutoresizingMaskIntoConstraints = false
        addSubview(doodletoon)
    }
    
    // MARK: – Button action
    
    @objc private func didTapPlayButton() {
        onPlayButtonTapped?()
    }
    
    @objc private func didTapPrivacyButton() {
        onPrivateButtonTapped?()
    }
    
    //MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setFrameMainImageView()
        setConstraintsPlayButton()
        setConstraintsPrivacyButton()
        setConstraintsDoodletoon()
    }
    
    private func setFrameMainImageView() {
        backImageView.frame = window?.frame ?? .zero
        NSLayoutConstraint.activate([
            backImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
        ])
    }
    
    private func setConstraintsPlayButton() {
        NSLayoutConstraint.activate([
            onPlayButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            onPlayButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 100),
            onPlayButton.widthAnchor.constraint(equalToConstant: 250),
            onPlayButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setConstraintsPrivacyButton() {
        NSLayoutConstraint.activate([
            onPrivacyButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            onPrivacyButton.centerYAnchor.constraint(equalTo: onPlayButton.bottomAnchor, constant: 30),
            onPrivacyButton.widthAnchor.constraint(equalToConstant: 180),
            onPrivacyButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setConstraintsDoodletoon() {
        NSLayoutConstraint.activate([
            doodletoon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            doodletoon.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100),
            doodletoon.widthAnchor.constraint(equalToConstant: 320),
            doodletoon.heightAnchor.constraint(equalToConstant: 370)
        ])
    }
}
