import SpriteKit
import GameplayKit

extension GameScene {
        
//touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            
            let Location = touch.location(in: self)
            
            ControlBase.position = Location
            ControlBall.position = ControlBase.position
        }
    }

    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let Location = touch.location(in: self)
            
            let Deltax = Location.x - ControlBase.position.x
            let Deltay = Location.y - ControlBase.position.y
            let Angle = atan2(Deltay, Deltax)
            
            let Length = ControlBase.frame.size.height / 2
            let DistanceX = cos(Angle) * Length
            let DistanceY = sin(Angle) * Length
            
            if ControlBase.frame.contains(Location) {
                
                ControlBall.position = Location
                
            } else{
                ControlBall.position = CGPoint(x: ControlBase.position.x + DistanceX, y: ControlBase.position.y + DistanceY)
            }
        }
    }
 
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let Location = touch.location(in: self)
            
            let MoveCenterAction = SKAction.move(to: ControlBase.position, duration: 0.2)
            MoveCenterAction.timingMode = .easeOut
            
            ControlBall.run(MoveCenterAction)
            
            
        }
    }
    
}
