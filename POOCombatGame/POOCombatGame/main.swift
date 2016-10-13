//
//  main.swift
//  POOCombatGame
//
//  Created by Rene on 12/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation

var isGameFinished : Bool = false

var personnage1 : Personnage? = nil
var personnage2 : Personnage? = nil


func readInput() -> Int {
    let strIn = readLine()
    
    return Int(strIn!)!
}

func getPersonnage(type : Int, nom : String) -> Personnage? {
    
    var personnage : Personnage?
    
    if(type >= 1 && type <= 3)
    {
        switch type {
        case 1 :
            personnage = Personnage(nom : nom, classe : .Archer, arme : Arc(), pointsDeVie : 70)
        case 2 :
            personnage = Personnage(nom : nom, classe : .Guerrier, arme : Epee(), pointsDeVie : 90)
        case 3 :
            personnage = Personnage(nom : nom, classe : .Mage, arme : Sceptre(), pointsDeVie : 60)
        default :
            personnage = nil
            break
        }
    }
    return personnage
}

repeat {
    
    
    while (personnage1 == nil) {
    
        print("Classe du personnage 1 : ")
        print("1 - Archer")
        print("2 - Guerrier")
        print("3 - Mage")
        print("")
        
        var typeEntered : Int = readInput()
        
        personnage1 = getPersonnage(type: typeEntered, nom : "Personnage 1")
    }
        
    while (personnage2 == nil) {
        
        print("Classe du personnage 2 : ")
        print("1 - Archer")
        print("2 - Guerrier")
        print("3 - Mage")
        print("")
        
        var typeEntered : Int = readInput()
        
        personnage2 = getPersonnage(type: typeEntered, nom : "Personnage 2")
    }
    
    
    print("Nom : \(personnage1!.nom)")
    print("Vie : \(personnage1!.pointsDeVie)")
    if(personnage1!.arme != nil){
        print("Dégats de son arme : \(personnage1!.arme?.degatsInfliges())")
    } else {
        print("Le personnage n'a pas d'arme")
    }
    
    var action : Int = readInput()

    repeat {
        print("")
        
    } while (action < 1 || action > 2)
    
    
    
    
} while(isGameFinished != false)






