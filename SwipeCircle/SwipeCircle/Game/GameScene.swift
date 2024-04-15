//
//  GameScene.swift
//  Swipe
//
//  Created by Aist Maraby on 13.04.24.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {

    
    override func didMove(to view: SKView) {
        setupSprites()
    }
    
    private func setupSprites() {
        createBackgroundSprite()
        createCircleSegment()
        createSwipeCircle()
    }
    
    private func createBackgroundSprite() {
        backgroundSprite = SKSpriteNode(imageNamed: "BGGameImage")
        backgroundSprite.zPosition = -1
        backgroundSprite.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        let backgroundAspectRatio = backgroundSprite.size.width / backgroundSprite.size.height
        let scale = frame.height / backgroundSprite.size.height * backgroundAspectRatio
        backgroundSprite.xScale = scale
        backgroundSprite.yScale = scale
        backgroundSprite.position.x = frame.midX
        backgroundSprite.position.y = frame.height / 2
        addChild(backgroundSprite)
    }
    
    private func createCircleSegment() {
        let randomIndex = Int.random(in: 0..<segmentTextures.count)
        let circleTexture = SKTexture(imageNamed: segmentTextures[randomIndex])
        circleSegment = SKSpriteNode(texture: circleTexture)
        circleSegment.size = CGSize(width: circleSegment.frame.width / 3, height: circleSegment.frame.height / 3)
        circleSegment.position = CGPoint(x: frame.midX, y: frame.midY)
        circleSegment.zPosition = 0
        addChild(circleSegment)
    }
    
    private func createSwipeCircle() {
        let randomIndex = Int.random(in: 0..<segmentTextures.count)
        let swipeCircleTexture = SKTexture(imageNamed: swipeCircleTextures[randomIndex])
        swipeCircle = SKSpriteNode(texture: swipeCircleTexture)
        swipeCircle.size = CGSize(width: swipeCircle.frame.width / 3, height: swipeCircle.frame.height / 3)
        swipeCircle.zPosition = 1
        circleSegment.addChild(swipeCircle)
    }
}
