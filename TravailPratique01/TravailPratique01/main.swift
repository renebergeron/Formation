//
//  main.swift
//  TravailPratique01
//
//  Created by Rene on 10/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation


var exitTyped = false

func input() -> Int {
    let strTyped = readLine()
    
    return Int(strTyped!)!
}


while(exitTyped != true){
    
    print("----- MENU -----")
    print("1 - Addition")
    print("2 - Soustraction")
    print("3 - Multiplication")
    print("4 - Division")
    print("5 - Modulo")
    print("9 - Exit")
    print("")
    print("Quel opération voulez vous effectuer?")
    print("")

    let typedStringAsInt = input()
    
    if(typedStringAsInt > 0 && typedStringAsInt < 6){
        
        print("Entrez le premier nombre : ")
        let premierNombre = input()
        print("Entrez le deuxième nombre : ")
        let deuixemeNombre = input()
        
        var resultat = 0;
        switch(typedStringAsInt){
        case 1 :
            resultat = premierNombre + deuixemeNombre
        case 2 :
            resultat = premierNombre - deuixemeNombre
        case 3 :
            resultat = premierNombre * deuixemeNombre
        case 4 :
            resultat = premierNombre / deuixemeNombre
        case 5 :
            resultat =  premierNombre % deuixemeNombre
        default:
            break
        }
        
        print("Le résultat est : \(resultat)")
        print("")
    }
    
    exitTyped = typedStringAsInt == 9
}




