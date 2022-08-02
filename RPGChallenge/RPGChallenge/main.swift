//
//  main.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

//VARIÁVEIS GLOBAIS AQUI//

var controleDJogo = 0
var contextoEscolhido = [String]()
var virusDJogo = [Virus]()


//Setando variâvel constante das opqoes do jogo
let opcoesDJogo = ["Começar uma partida", "Ver tutorial", "Sair do jogo"]


//FUNÇÕES AOUI//

func rodarTutorial() {
    for txtTutorial in Contexto().tutorial {
        print("\(txtTutorial)")
        sleep(1)
    }
}

func escolheOpcao() -> String {
    
    //Função que da as opções do RPG para o usuârio escolher
    var escolha: String?
    
    print("\nBem vindo, convido você a tentar ajudar Pedro Henrique e Izaias a salvar o mundo, vamos la?!\n")
    
    //Imprimindo as opções do jogo na tela
    for i in 0...opcoesDJogo.count-1 {
        print("\n\(i+1) - \(opcoesDJogo[i])")
    }
    
    escolha = readLine()
    
    //Para evitar futuros erros foi feito uma tratativa
    while (escolha != "1" && escolha != "2" && escolha != "3") {
        print("\nValor digitado está incorreto, digite novamente:")
        escolha = readLine()
    }
    
    return escolha ?? ""
}

func adicionaNumsAleatoriosVirus(arrVirus: [Int], indc: Int) -> [Int] {
    var newArrVirus = arrVirus
    
    switch indc {
    case 0:
        
        //Adicionando qualquer número entre o intervalo setado
        newArrVirus.append(Int.random(in: 0...Contexto().virusDisponiveis.count-1))
        return newArrVirus
        
    case 1:
        
        //Adicionando qualquer número entre o intervalo setado que seja diferente do primeiro número ja contido na array
        var newNum = Int.random(in: 0...Contexto().virusDisponiveis.count-1)
        
        while arrVirus[0] == newNum {
            newNum = Int.random(in: 0...Contexto().virusDisponiveis.count-1)
        }
        
        newArrVirus.append(newNum)
        
        return newArrVirus
        
    case 2:
        
        //Adicionando qualquer número entre o intervalo setado que seja diferente do primeiro e segundo número ja contido na array
        var newNum = Int.random(in: 0...Contexto().virusDisponiveis.count-1)
        
        while arrVirus[0] == newNum || arrVirus[1] == newNum{
            newNum = Int.random(in: 0...Contexto().virusDisponiveis.count-1)
        }
        
        newArrVirus.append(newNum)
        
        return newArrVirus
        
    default:
        
        return arrVirus
        
    }
}

func escolherVirusDJogo() {
    var arrayIndcVirus = [Int]()
    for i in 0...2 {
        arrayIndcVirus = adicionaNumsAleatoriosVirus(arrVirus: arrayIndcVirus, indc: i)
        virusDJogo.append(Contexto().virusDisponiveis[arrayIndcVirus[i]])
    }
}

//Função que gera um numero randômico e escolhe a história a ser seguida
func escolherContexto()  -> [String] {
    //Gerando um número randômico que vai decidir qual história vai ser nessa aplicação
    let escolhaContextoRandomico = Int.random(in: 1...3)
    
    switch escolhaContextoRandomico {
    case 1:
        return Contexto().historiaCasoPrimeiro
    case 2:
        return Contexto().historiaCasoSecundario
    case 3:
        return Contexto().historiaCasoTerciario
    default:
        return [""]
    }
}

//Função que apresenta a base da história
func mostrarHistoriaBase() {
    for txtBase in Contexto().historiaBase {
        print(txtBase)
        sleep(1)
    }
}

func comecarJogo() {
    //Escolhendo contexto a sequir no jogo
    contextoEscolhido = escolherContexto()
    
    //Inicializando a array de Virus contidas na história
    escolherVirusDJogo()
    
    mostrarHistoriaBase()
}

func estruturaCondicionalDJogo(escolha: String) -> Int {
    
    switch escolha {
    case "1":
        comecarJogo()
        return 0
    case "2":
        rodarTutorial()
        return 1
    default:
        return 2
    }
}

//CODIGO PRINCIPAL COMEÇA AQUI//

while controleDJogo != 2 {
    //Criando variável auxiliar nas escolhas do jogo
    var escolhaDJogo: String?
    
    //Setando valor da variâvel escolha com base na esclha do usuário
    escolhaDJogo = escolheOpcao()
    
    controleDJogo = estruturaCondicionalDJogo(escolha: escolhaDJogo ?? "")
}
