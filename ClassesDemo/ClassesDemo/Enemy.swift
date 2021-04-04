//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Chandran, Sudha on 04/04/21.
//

import Foundation

class Enemy {
    var health: Int
    var attachStrength: Int
    
    init(health: Int, attachStrength: Int) {
        self.health = health
        self.attachStrength = attachStrength
    }
    
    func takeDamage(amount: Int) {
        health = health - 1
    }
    
    func move() {
        print("Walk towards.")
    }
    
    func attack() {
        print("Land a hit , does \(attachStrength) damage")
    }
}
