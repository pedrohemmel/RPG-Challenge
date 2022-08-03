//
//  Virus.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

public struct Virus {
    public var nome: String
    public var seringaCompativel: Seringa
    public var caracteristicaVirus: String
    
    init(nome: String, seringaCompativel: Seringa, caracteristicaVirus: String) {
        self.nome = nome
        self.seringaCompativel = seringaCompativel
        self.caracteristicaVirus = caracteristicaVirus
    }
}
