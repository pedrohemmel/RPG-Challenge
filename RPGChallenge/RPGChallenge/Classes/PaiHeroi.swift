//
//  PaiHeroi.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

public class PaiHeroi: Heroi {
    //Variável que transforma a classe em uma do tipo singleton
    static let pedroHenrique = PaiHeroi(seringaHeroi: [
        Seringa("Raiva"),
        Seringa("Bacteriófago"),
        Seringa("Papilomavírus"),
        Seringa("Rotavírus"),
        Seringa("Herpes Simples")
    ], nome: "Pedro Henrique")
    
    init(seringaHeroi: [Seringa], nome: String) {
        super.init(seringaHeroi, nome)
    }
}
