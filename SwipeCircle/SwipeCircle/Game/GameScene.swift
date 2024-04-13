//
//  GameScene.swift
//  Swipe
//
//  Created by Aist Maraby on 13.04.24.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
                backgroundColor = .blue

                let sprite = SKSpriteNode(imageNamed: "imageName")
                sprite.position = CGPoint(x: size.width/2, y: size.height/2)
                addChild(sprite)
    }
}
