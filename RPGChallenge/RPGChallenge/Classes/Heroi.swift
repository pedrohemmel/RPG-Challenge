//
//  Heroi.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

// Configura um jogo com base em texto do tipo “escolha sua própria aventura”.
public class Heroi {
    public var nome: String
    public var seringaHeroi: [Seringa]
    public var estaInfectado : Bool
    
    //Criando variável que representará o comportamento da classe, nesse caso comportamento será o poder
    fileprivate var comportamentoColherAmostra : IColher
    
    public func contrairVirus() {
        self.comportamentoColherAmostra = IColherNaoColher()
    }
    
    public func reiniciarComportamento() {
        self.comportamentoColherAmostra = IColherAmostra()
    }
    
    public func colherAmostra() -> String {
        return comportamentoColherAmostra.colherAmostra()
    }
    
    //Inicializando variáveis do objeto
    public init(_ seringaHeroi: [Seringa], _ nome: String) {
        self.nome = nome
        self.seringaHeroi = seringaHeroi
        self.estaInfectado = false
        self.comportamentoColherAmostra = IColherAmostra()
    }
}

 
