//
//  main.swift
//  VariablesOperateurs
//
//  Created by Rene on 07/10/2016.
//  Copyright © 2016 Rene. All rights reserved.
//

import Foundation

let erreur404http = (code : 404, message : "Not found")

var val1 = erreur404http.code
var val2 = erreur404http.message

print(val1)
print(val2)

print("\(erreur404http.code) " + erreur404http.message)

val1 = 404;

switch val1{
case 0..<404 :
    print("Ce devrait être trouvé")
    break
case 404 :
    print(erreur404http.message)
default:
    print("Rien a déclarer")
    
}

val1 = 0

while val1 < 1000 {
    print("On affiche encore une ligne!!!")
    val1 += 1
}

val1 = 1

for val1 in 1...1000{
    print("\(val1) Encore une autre ligne!!!")
}


let presonnes = [(prenom : "Gaston", nom : "Lagaffe", genre : "H"), (prenom : "Irma", nom : "Couako", genre : "F"), (prenom : "Elvis", nom : "Graton", genre : "H")]

for personne in presonnes{
    print(personne.genre + " " + personne.prenom + " " + personne.nom)
}


func saluerUnePersonne(prenom : String, nom : String){
    print("Bonjour " + prenom + " " + nom +  " !")
}

func formaterMessageSalutation(prenom : String, nom : String) -> String {
    let resultat = "Salut " + prenom + " " + nom + " !!!!!"
    
    return resultat
}


saluerUnePersonne(prenom : "Jane", nom : "Doe")


print(formaterMessageSalutation(prenom: "John", nom: "Doe"))




func sayHello(amorce : String) -> (String) -> String {
    func completeMessage(endMessage : String) -> String {
        return "\(amorce) \(endMessage)"
    }
    return completeMessage
}

print(sayHello(amorce: "Pouet pouet")(" boulou boulou!!!!!! "))


/*func firstGreaterThanSecond(first : Int, second : Int) -> Bool {
    return first > second;
}*/

func functionClosure( paramfunction : (Int, Int) -> Bool) {
    if paramfunction(4, 3) {
        print("Yeah man it still validate!!!")
    }
}

//function( paramfunction: firstGreaterThanSecond)


functionClosure{ (first : Int, seconde : Int) -> Bool in
    return first > seconde
}

//functionClosure(paramfunction: firstGreaterThanSecond)


