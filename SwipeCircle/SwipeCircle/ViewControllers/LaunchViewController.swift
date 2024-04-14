//
//  ViewController.swift
//  SwipeCircle
//
//  Created by Aist Maraby on 13.04.24.
//

import UIKit

class LaunchViewController: UIViewController {
    
    private let loadingView = LoadingView()
    
    override func loadView() {
        super.loadView()
        self.view = loadingView
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        loadingView.frame = view.bounds
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loadingView.animateBall()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
