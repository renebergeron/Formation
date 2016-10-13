//
//  Acteur.swift
//  ObjectOrientedProgramming
//
//  Created by Rene on 11/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation


class Acteur : Personne{
    
    var filmsJoues : [Film] = []
    
    
    func jouerUnRole(nomDuFilm : String, dateSortie : Date) {
     
        let film = Film(titre : nomDuFilm, dateSortie : dateSortie)
        filmsJoues.append(film)
        
    }
    
    func participerAUnCasting(nomSociete : String) {
        
    }
    
    override func affichaerInfos() {
        super.affichaerInfos()
        
        print("Ajoué dans : ")
        for film in filmsJoues {
            print("- Titre du film : \(film.titre), Date de sortie \(film.dateSortie)")
        }
    }
    
    
}
