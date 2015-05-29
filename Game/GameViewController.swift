//
//  GameViewController.swift
//  Game
//
//  Created by Yujia Dong on 5/28/15.
//  Copyright (c) 2015 Vail Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
//CREATE TWO SHAPES
    var blueSquare: UIView?
    var redSquare: UIView?
    var animator: UIDynamicAnimator?
    
    //@IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let dynamicController = UIDynamicAnimator(referenceView: self.view)
        //CREATE THE SHAPE
        var dimen = CGRectMake(25, 25, 60, 60)
        blueSquare = UIView(frame: dimen)
        blueSquare?.backgroundColor = UIColor(red: 0.6, green: 0.9, blue: 1.5, alpha: 1)
        
        dimen = CGRectMake(130, 25, 90, 90)
        redSquare = UIView(frame: dimen)
        redSquare?.backgroundColor = UIColor(red: 1.5, green: 0.9, blue: 0.6, alpha: 1)
        self.view.addSubview(blueSquare!)
        self.view.addSubview(redSquare!)
        //initialze the animator
        
        animator = UIDynamicAnimator(referenceView: self.view)
        //add gravity
        let gravity = UIGravityBehavior(items: [blueSquare!, redSquare!])
        let direction = CGVectorMake(0.0, 1.0)
        gravity.gravityDirection = direction
        
        //collison
        let boundraies = UICollisionBehavior(items: [blueSquare!, redSquare!])
        boundraies.translatesReferenceBoundsIntoBoundary = true
        
        
        //elasticity
        
        let bounce = UIDynamicItemBehavior(items: [blueSquare!, redSquare!])
      bounce.elasticity = 1
        
        animator?.addBehavior(gravity)
        animator?.addBehavior(boundraies)
        animator?.addBehavior(bounce)
        
        
        
        

    }

   

}

//        //create aninmation block to fade out
//        UIView.animateWithDuration(3.0, animations: {
//        let grow =  CGAffineTransformMakeScale(50, 50)
//            let angle = CGFloat(40)
//            let rotate = CGAffineTransformMakeRotation(angle)
//            self.button1.transform = CGAffineTransformConcat(grow, rotate)
//        })