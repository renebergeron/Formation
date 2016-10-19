//
//  Personnage.swift
//  POOCombatGame
//
//  Created by Rene Bergeron on 13/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation

class Personnage {
    
    var classe : Classe
    var nom : String
    var arme : Arme?
    var pointsDeVie : Int = 0
    
    init(nom : String, classe : Classe, arme : Arme, pointsDeVie : Int){
        self.nom = nom
        self.classe = classe
        self.arme = arme
        self.pointsDeVie = pointsDeVie
    }
    
    func attaquer() -> Int {
        var degats : Int = 0
        
        if(self.arme != nil) {
            degats = self.arme!.degatsInfliges()
        }
        return degats;
    }
    
    func ameliorerArme() {
        if(arme != nil) {
            arme!.ameliorerArme();
        }
    }
    
    func recevoirDegats(degats : Int) {
        pointsDeVie -= degats
        
        if(pointsDeVie < 0){
            pointsDeVie = 0
        }
    }
}
