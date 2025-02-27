//
//  DataStore.swift
//  AnimationApp
//
//  Created by Дима Монид on 26.02.25.
//
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    private init() {}
}
