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
    
    init(nome: String, seringaCompativel: Seringa) {
        self.nome = nome
        self.seringaCompativel = seringaCompativel
    }
}
