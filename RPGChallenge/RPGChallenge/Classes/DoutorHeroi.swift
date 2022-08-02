//
//  DoutorHeroi.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

public class DoutorHeroi: Heroi {
    //Variável que transforma a classe em uma do tipo singleton
    static let doutorFabio = DoutorHeroi(seringaHeroi: [
        Seringa("HIV")
    ], nome: "Dr. Fabio")
    
    init(seringaHeroi: [Seringa], nome: String) {
        super.init(seringaHeroi, nome)
    }
}

