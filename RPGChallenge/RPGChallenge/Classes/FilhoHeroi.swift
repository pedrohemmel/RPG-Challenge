//
//  FilhoHeroi.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

public class FilhoHeroi: Heroi {
    //Variável que transforma a classe em uma do tipo singleton
    static let izaias = FilhoHeroi(seringaHeroi: [
        Seringa("HIV"),
        Seringa("Hepatite B"),
        Seringa("Ebola"),
        Seringa("Adenovírus"),
        Seringa("Influenza")
    ], nome: "Izaias")
    
    init(seringaHeroi: [Seringa], nome: String) {
        super.init(seringaHeroi, nome)
    }
}

