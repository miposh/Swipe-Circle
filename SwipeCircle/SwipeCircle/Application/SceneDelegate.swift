//
//  SceneDelegate.swift
//  SwipeCircle
//
//  Created by Aist Maraby on 13.04.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
            window = UIWindow(windowScene: windowScene)
            let rootViewController = LaunchViewController()
//            let rt = UINavigationController(rootViewController: rootViewController)
            window?.rootViewController = rootViewController
            window?.makeKeyAndVisible()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            UIView.transition(with: self.window!, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.window?.rootViewController = GameViewController()
            }, completion: nil)
        }
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

