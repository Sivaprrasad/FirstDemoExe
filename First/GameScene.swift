//
//  GameScene.swift
//  First
//
//  Created by Uppalapati SivaPrrasad on 16/10/19.
//  Copyright © 2019 Uppalapati SivaPrrasad. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//    let label1 = SKLabelNode(text: "welcome")
    
    let Square = SKSpriteNode(color: SKColor.gray, size: CGSize(width: 100, height: 100))
    
    let circle = SKShapeNode(circleOfRadius: CGFloat(30))
    
    let image = SKSpriteNode(imageNamed: "pikachu64")
    
    let background = SKSpriteNode(imageNamed: "bg1")
    
   
    override func didMove(to view: SKView) {
   
        
        print("screen w,h : \(size.width),\(size.height)")
        
//        label1.position = CGPoint(x: 185, y: 333)
//        label1.fontSize = 45
//        label1.fontColor = SKColor.white
//        label1.fontName = "times new roman"
        
        Square.position = CGPoint(x: 100, y: 200)
        circle.position = CGPoint(x: 200, y: 300)
        circle.fillColor = SKColor.red
        circle.strokeColor = SKColor.yellow
        
        image.position = CGPoint(x: 100, y: 100)
        
        background.position = CGPoint(x: (frame.size.width)/2 , y: (frame.size.height)/2)
        background.zPosition = -1
        
        
        
//        let moveUpAction = SKAction.moveBy(x:0, y:200, duration:1.5)
//        let moveRightAction = SKAction.moveBy(x: 200, y: 0, duration: 1.5)
//        let moveDownAction = SKAction.moveBy(x: 0, y:-200, duration: 1.5)
//        let moveLeftAction = SKAction.moveBy(x: -200, y: 0, duration: 1.5)
//        let sequence = SKAction.sequence([moveUpAction,moveRightAction,moveDownAction,moveLeftAction])
//
//        Square.run(SKAction.repeatForever(sequence))
//        circle.run(SKAction.repeatForever(sequence))
//        image.run(SKAction.repeatForever(sequence))
//

        
        
//        addChild(label1)
        addChild(Square)
        addChild(circle)
        addChild(image)
        addChild(background)

       
    }
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            // The touchesEnded function captures touches in an array
            // of UITouch objects

            // You only need ONE touch, so get the first one from the array
            let locationTouched = touches.first

            if (locationTouched == nil) {
                // This is error handling
                // Sometimes the mouse detection doesn't work properly
                // and IOS can't get the position.
                return
            }
            
            // The UITouch object has a property called location
            // the location property has an (x,y)
            let touchLocation = locationTouched!.location(in:self)
            
        print("MOUSE X?  \(touchLocation.x.rounded())")
        print("MOUSE Y?  \(touchLocation.y.rounded())")
            print("------")
        
        
    }

    
    
  
}
