//
//  ViewController.swift
//  AnimationApp
//
//  Created by Дима Монид on 26.02.25.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var viewAnimation: SpringView!
    @IBOutlet var labelAnimation: SpringLabel!{
        didSet {
            labelAnimation.text = animation.description
        }
    }
    
    private var animation = Animation.randomAnimation
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        labelAnimation.animation = "fadeOut"
        labelAnimation.animate()
        
        labelAnimation.animateNext { [unowned self] in
            labelAnimation.text = animation.description
            labelAnimation.animation = "fadeIn"
            labelAnimation.animate()
            
            viewAnimation.animation = animation.preset
            viewAnimation.curve = animation.curve
            viewAnimation.force = animation.force
            viewAnimation.duration = animation.duration
            viewAnimation.delay = animation.delay
            viewAnimation.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.preset)", for: .normal)
        }
    }
}

