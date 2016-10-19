//
//  Sceptre.swift
//  POOCombatGame
//
//  Created by Rene Bergeron on 13/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation

class Sceptre : Arme {
    
    var degat : Int = 10
    
    func degatsInfliges() -> Int {
        return degat
    }
    
    func ameliorerArme() {
        degat += 15
    }
}
