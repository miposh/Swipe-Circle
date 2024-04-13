//
//  GameViewController.swift
//  Swipe
//
//  Created by Aist Maraby on 13.04.24.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    private let homeView = MainView()
    
    override func loadView() {
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.onPlayButtonTapped = { [weak self] in
            print("ты котик")
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeView.frame = view.bounds
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
