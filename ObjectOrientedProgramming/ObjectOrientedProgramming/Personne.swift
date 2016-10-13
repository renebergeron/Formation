//
//  Personne.swift
//  ObjectOrientedProgramming
//
//  Created by Rene on 10/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation


class Personne{
    var nom : String
    var prenom : String
    var sexe : String
    var age : Int
    var adresse : String
    
    init(nom : String, prenom : String, sexe : String, age : Int, adresse : String) {
        self.nom = nom
        self.prenom = prenom
        self.sexe = sexe
        self.age = age
        self.adresse = adresse
    }
    
    func seMarier(nouveauNom : String){
        if isFemale() {
            self.nom = nouveauNom;
        } else {
            print("Dans certaines sociétés seule les femmes changent de nom :(!!!")
        }
        
    }
    
    func isFemale() -> Bool {
        return self.sexe == "f"
    }
    
    func feterSonAnniversaire() {
        self.age += 1
    }
    
    func demenager(nouvelleAdresse: String) {
        self.adresse = nouvelleAdresse;
    }

    func affichaerInfos() {
        print("Nom : \(self.nom)")
        print("Prénom : \(self.prenom)")
        print("Sexe : \(self.sexe)")
        print("Age : \(self.age)")
        print("Adresse : \(self.adresse)")
    }
    
    func affichaerInfos(valueToDisplay: String) {
        switch valueToDisplay {
        case "Nom":
            print("Nom : \(self.nom)")
        case "Prénom":
            print("Prénom : \(self.prenom)")
        case "Sexe":
            print("Sexe : \(self.sexe)")
        case "Age":
            print("Age : \(self.age)")
        case "Adresse":
            print("Adresse : \(self.adresse)")
        default:
            print("Impossible de pouvoir afficher la valeur de \(valueToDisplay)")
        }
    }
    
}
