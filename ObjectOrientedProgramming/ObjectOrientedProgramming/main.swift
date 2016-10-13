//
//  main.swift
//  ObjectOrientedProgramming
//
//  Created by Rene on 10/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation

let personne = Personne(nom : "Doe", prenom : "Jane", sexe : "f", age : 25, adresse : "Unknown to date")
let personne2 = Personne(nom : "Doe", prenom : "John", sexe : "m", age : 26, adresse : "Not known")

print("Nom de la personne au depart : \(personne.nom)")

personne.affichaerInfos()



personne.nom = "NouveauNom"

personne2.affichaerInfos()

personne.affichaerInfos(valueToDisplay : "Nom")


personne.affichaerInfos(valueToDisplay : "Pouet")


print("Le nouveau nom est : \(personne.nom)")



var hulk = SuperHero(name : "Hulk", power : "Ultra strong")
var hulkBis = hulk

hulkBis.name = "Hulk bis"
hulkBis.power = "Less strong than the other"

hulk.whoIsIt()

hulkBis.whoIsIt()



let personne3 = Personne(nom : "Nom3", prenom : "PerNom3", sexe : "m", age : 24, adresse : "adresse3")

let acteur = Acteur(nom : "ActeurName", prenom : "ActeurFirstName", sexe : "m", age : 26, adresse : "adresseActeur")

acteur.jouerUnRole(nomDuFilm: "film du mois 01 ", dateSortie: Date.init())
acteur.jouerUnRole(nomDuFilm: "film du mois 02", dateSortie: Date.init())


personne3.affichaerInfos()
acteur.affichaerInfos()

var testEnumLangage = Langage.Swift("Ce laguage ","est le language swift")

testEnumLangage = .Java("Le langage java est puissant")
testEnumLangage = .Swift("Pouet", " pouet")
testEnumLangage = .C("Boulou!!!")


switch testEnumLangage {
case let .Swift(messageAmorce, messageEnd) :
    print(messageAmorce + messageEnd)
case var .Java(descJava) :
    print(descJava)
default:
    print("Cas non traité!!!")
}


var str : String = "ABC"

str.append(contentsOf: ["D", "E"])
print(str)


print("Nombre de charactere \( str.characters.count)")


var nbr : Int = 7

var tableau = ["a","l","l","o","s"]
print(tableau.last)
print(tableau.first)

tableau.append(contentsOf: ["X","Y","Z"])
tableau.insert("W", at: 1)

print(tableau.last)
print(tableau.first)
print(tableau)
tableau.reverse()
print(tableau)



let nombreString : String = "225"
var nbrInt : Int? = Int(nombreString)

if(nbrInt != nil){
    print("il n'est pas nil \(nbrInt!)")
} else {
    print("il est nil \(nbrInt)")
}

nbrInt = Int("bonjour")

if(nbrInt != nil){
    print("il n'est pas nil \(nbrInt)")
} else {
    print("il est nil \(nbrInt)")
}

if(nbrInt != nil){
    print("il n'est pas nil \(nbrInt!)")
} else {
    print("il est nil \(nbrInt)")
}

let strNumber = "654"

if let number = Int(strNumber) {
    print("Le deux constante \(strNumber), \(number) sont disonnible")
} else {
    print("Seul la valeur de strNumber : \(strNumber) est disponnible")
}

let strNumber02 = "Yo"

if let number02 = Int(strNumber02) {
    print("Le deux constante \(strNumber02), \(number02) sont disonnible")
} else {
    print("Seul la valeur de strNumber : (\(strNumber02)) est disponnible")
}


print(3.squareroot)
print(3.square)

var answ : Float = 3.0

print(answ.squareRoot())

print((3.0).squareRoot())
