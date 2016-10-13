//
//  Arc.swift
//  POOCombatGame
//
//  Created by Rene Bergeron on 13/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation

class Arc : Arme {
    var degat : Int = 12
    
    func degatsInfliges() -> Int {
        return degat
    }
    
    func ameliorerArme() {
        degat += 8
    }
}
