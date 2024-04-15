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
    
    var skView: SKView!
    
    override func loadView() {
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.onPlayButtonTapped = { [weak self] in
            self!.skView = SKView(frame: self!.view.bounds)
            self!.view.addSubview(self!.skView)
            
            let scene = GameScene(size: self!.view.bounds.size)
            scene.scaleMode = .aspectFill
            self!.skView!.presentScene(scene)
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        homeView.frame = view.bounds
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
