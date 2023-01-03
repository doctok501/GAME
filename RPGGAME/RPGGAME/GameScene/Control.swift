import SpriteKit
import GameplayKit

extension GameScene {
        
//touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            
            let Location = touch.location(in: self)
            
            TouchPoint = Location
            
        }
    }

    
    
}
