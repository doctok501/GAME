//
//  GameScene.swift
//  RPGGAME
//
//  Created by 김인겸 on 2022/11/27.
//

import SpriteKit
import GameplayKit

//mark -variable
class GameScene: SKScene {
    
    let Player = SKSpriteNode(imageNamed: "RedSwan")
    
    let ControlBase = SKSpriteNode(imageNamed: "ControlBase")
    let ControlBall = SKSpriteNode(imageNamed: "ControlBall")
    
    
    
    override func didMove(to view: SKView) {
        // controller
        ControlBase.position = CGPoint(x: -500, y: -200)
        ControlBase.zPosition = 100
        ControlBase.alpha = 0.5
        self.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = ControlBase.zPosition
        ControlBall.alpha = ControlBase.alpha
        self.addChild(ControlBall)
        
        
        Player.zPosition = 10
        self.addChild(Player)
        
    }
    
}
