//
//  IColherNaoColher.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

//Criando classe que representará um comportamento herdado de IPoder
public class IColherNaoColher : IColher {
    func colherAmostra() -> String {
        return "Infelizmente não consigo pegar uma amostra, estou fraco, infectado!"
    }
}
