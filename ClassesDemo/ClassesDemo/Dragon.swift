//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Chandran, Sudha on 04/04/21.
//

import Foundation

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("says: \(speech)")
    }
    
    override func move() {
        print("Fly forwards")
    }
    
    override func attack() {
        super.attack()
        print("spit fire, does 10 damage")
    }
}
