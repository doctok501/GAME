//
//  GameScene.swift
//  RPGGAME
//
//  Created by 김인겸 on 2022/11/27.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let Player = SKSpriteNode(imageNamed: "RedSwan")
    
    var TouchPoint = CGPoint()
    
    
    
    override func didMove(to view: SKView) {
        self.addChild(Player)
        
    }
    
}
