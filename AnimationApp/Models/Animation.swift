//
//  Animation.swift
//  AnimationApp
//
//  Created by Дима Монид on 26.02.25.
//

struct Animation: CustomStringConvertible{
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
preset: \(preset)
curve: \(curve)
force: \(String(format: "%.02f", force))
duration: \(String(format: "%.02f", duration))
delay: \(String(format: "%.02f", delay))
"""
    }
    
    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "wobble",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Double.random(in: 0.8...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: Double.random(in: 0.5...1.0)
        )
    }
}
