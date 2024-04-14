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
    
    private let homeView = HomeView()
    
    override func loadView() {
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        homeView.frame = view.bounds
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
