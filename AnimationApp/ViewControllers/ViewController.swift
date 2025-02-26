//
//  ViewController.swift
//  AnimationApp
//
//  Created by Дима Монид on 26.02.25.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationLabel: SpringLabel!{
        didSet {
            springAnimationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.randomAnimation

    @IBAction func runButtonPressed(_ sender: UIButton) {
        springAnimationLabel.animation = "fadeOut"
        springAnimationLabel.animate()
        
        springAnimationLabel.animateNext { [unowned self] in
            springAnimationLabel.text = animation.description
            springAnimationLabel.animation = "fadeIn"
            springAnimationLabel.animate()
            
            springAnimationView.animation = animation.name
            springAnimationView.curve = animation.curve
            springAnimationView.force = animation.force
            springAnimationView.duration = animation.duration
            springAnimationView.delay = animation.delay
            springAnimationView.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.name)", for: .normal)
        }
        
    }
    
}

