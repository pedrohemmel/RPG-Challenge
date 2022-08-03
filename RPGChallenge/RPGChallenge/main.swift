//
//  main.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation

//VARIÁVEIS GLOBAIS AQUI//

var controleDJogo = 0
var auxContextoEscolhido = [0, 0, 0]
var contextoEscolhido = [String]()
var virusDJogo = [Virus]()
var contadorVirusAparecidos = 0
var seringasAtuais = [Seringa]()
var contContexto = 0
var interrompeHistoria = false


//Setando variâvel constante das opqoes do jogo
let opcoesDJogo = ["Começar uma partida", "Ver tutorial", "Sair do jogo"]


//FUNÇÕES AOUI//


//Reinicializando as variaveis globais
func limpaVariaveis() {
    controleDJogo = 0
    auxContextoEscolhido = [0, 0, 0]
    contextoEscolhido = [String]()
    virusDJogo = [Virus]()
    contadorVirusAparecidos = 0
    seringasAtuais = [Seringa]()
    contContexto = 0
    interrompeHistoria = false
    
    PaiHeroi.pedroHenrique.estaInfectado = false
    FilhoHeroi.izaias.estaInfectado = false
    
    PaiHeroi.pedroHenrique.reiniciarComportamento()
    FilhoHeroi.izaias.reiniciarComportamento()
}

func imprimirLinha() {
    print("\n\n_________________________________________\n\n")
}

func rodarTutorial() {
    imprimirLinha()
    for txtTutorial in Contexto().tutorial {
        print("\(txtTutorial)")
        sleep(3)
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


//Função que verifica se o contexto ja foi escolhido através do index do auxContexto
func verificacaoEscolherTexto(escolhaContexto: Int) -> Int {
    var escolha = escolhaContexto
    while(escolha == auxContextoEscolhido[0] || escolha == auxContextoEscolhido[1] || escolha == auxContextoEscolhido[2]) {
        
        if auxContextoEscolhido[0] != 0 && auxContextoEscolhido[1] != 0 && auxContextoEscolhido[2] != 0 {
            break
        }
        
        escolha = Int.random(in: 1...3)
    }
    return escolha
}

//Função que gera um numero randômico e escolhe a história a ser seguida
func escolherContexto()  -> [String] {
    //Gerando um número randômico que vai decidir qual história vai ser nessa aplicação
    var escolhaContextoRandomico = Int.random(in: 1...3)
    
    escolhaContextoRandomico = verificacaoEscolherTexto(escolhaContexto: escolhaContextoRandomico)
    
    switch escolhaContextoRandomico {
    case 1:
        auxContextoEscolhido.append(escolhaContextoRandomico)
        auxContextoEscolhido.removeFirst()
        return Contexto().historiaCasoPrimeiro
    case 2:
        auxContextoEscolhido.append(escolhaContextoRandomico)
        auxContextoEscolhido.removeFirst()
        return Contexto().historiaCasoSecundario
    case 3:
        auxContextoEscolhido.append(escolhaContextoRandomico)
        auxContextoEscolhido.removeFirst()
        return Contexto().historiaCasoTerciario
    default:
        return [""]
    }
}

//Função que busca todas seringas disponíveis no heroi indicado no parâmetro
func seringasDisponiveis(heroi: Heroi) {
    
    for seringaHeroi in heroi.seringaHeroi {
        seringasAtuais.append(seringaHeroi)
    }
}

//Função que imprime as seringas disponíveis no inventário dos heróis e da a opção de serem escolhidas
func imprimeOpcoesSeringa() -> Int {
    for i in 0...seringasAtuais.count-1 {
        print("\n\(i+1) - Seringa: \(seringasAtuais[i].nome)")
        usleep(100000)
    }
    sleep(1)
    print("\nEscolha a seringa com base em sua numeração: ")
    
    return Int(readLine()!) ?? 0
}

func identificaSeringaHeroi(heroi: Heroi, seringa: Seringa) -> Bool {
    for seringaHeroi in heroi.seringaHeroi {
        if (seringaHeroi.nome == seringa.nome) {
            return true
        }
    }
    return false
}

func colheAmostra(indcSeringa: Int) {
    if(identificaSeringaHeroi(heroi: PaiHeroi.pedroHenrique, seringa: seringasAtuais[indcSeringa])) {
        print("\n\n\(PaiHeroi.pedroHenrique.nome): \(PaiHeroi.pedroHenrique.colherAmostra())\n\n")
    } else {
        print("\n\n\(FilhoHeroi.izaias.nome): \(FilhoHeroi.izaias.colherAmostra())\n\n")
    }
}

func contraiVirus(indcSeringa: Int) {
    print("\nAI! Seringa errada!")
    
    if(identificaSeringaHeroi(heroi: PaiHeroi.pedroHenrique, seringa: seringasAtuais[indcSeringa])) {
        
        PaiHeroi.pedroHenrique.contrairVirus()
        PaiHeroi.pedroHenrique.estaInfectado = true
        
        print("\nTrágico... Pedro Henrique acabou de ser infectado! A partir de agora conseguirá apenas andar")
        print("\n\n'\(PaiHeroi.pedroHenrique.nome): \(PaiHeroi.pedroHenrique.colherAmostra())'\n\n")
        
        //Adicionando as seringas do pai para o filho
        for seringaPai in PaiHeroi.pedroHenrique.seringaHeroi {
            FilhoHeroi.izaias.seringaHeroi.append(seringaPai)
            PaiHeroi.pedroHenrique.seringaHeroi.removeFirst()
        }
    } else {
        FilhoHeroi.izaias.contrairVirus()
        FilhoHeroi.izaias.estaInfectado = true
        
        print("\nTrágico... Izaias acabou de ser infectado! A partir de agora conseguirá apenas andar")
        print("\n\n'\(FilhoHeroi.izaias.nome): \(FilhoHeroi.izaias.colherAmostra())'\n\n")
        
        //Adicionando as seringas do filho para o pai
        for seringaFilho in FilhoHeroi.izaias.seringaHeroi {
            PaiHeroi.pedroHenrique.seringaHeroi.append(seringaFilho)
            FilhoHeroi.izaias.seringaHeroi.removeFirst()
        }
    }
    if(PaiHeroi.pedroHenrique.estaInfectado == true && FilhoHeroi.izaias.estaInfectado == true) {
        interrompeHistoria = true
    }
    
}


func verificaSeringaEVirus(indcVirus: Int, indcSeringa: Int) {
    if(virusDJogo[indcVirus].seringaCompativel.nome == seringasAtuais[indcSeringa].nome) {
        colheAmostra(indcSeringa: indcSeringa)
    } else {
        contraiVirus(indcSeringa: indcSeringa)
    }
}

func iniciaColetaAmostra(indcVirus: Int) {
    seringasAtuais = [Seringa]()
    seringasDisponiveis(heroi: FilhoHeroi.izaias)
    seringasDisponiveis(heroi: PaiHeroi.pedroHenrique)
    
    print("\(virusDJogo[indcVirus].caracteristicaVirus)")
    
    print("\nQual seringa seria necessária nessa situação?")
    
    var seringaEscolhida = imprimeOpcoesSeringa()
    
    while(seringaEscolhida == 0) {
        seringaEscolhida = imprimeOpcoesSeringa()
    }
    
    verificaSeringaEVirus(indcVirus: indcVirus, indcSeringa: seringaEscolhida-1)
}

//Função que apresenta a base da história
func mostrarHistoriaBase() {
    for txtBase in Contexto().historiaBase {
        print(txtBase)
        sleep(3)
    }
}

func rodarHistoriaEscolhida(historia: [String]) -> [String] {
    
    imprimirLinha()
    
    for txtHistoria in historia {
        if(txtHistoria != "ativa") {
            print(txtHistoria)
            sleep(3)
        } else {
            
            iniciaColetaAmostra(indcVirus: contadorVirusAparecidos)
            contadorVirusAparecidos = contadorVirusAparecidos + 1
        }
    }
    return escolherContexto()
}

func imprimirFinal() {
    imprimirLinha()
    for contexto in Contexto().verificaESetaFinal() {
        if contexto != "final" {
            print("\(contexto)")
            sleep(3)
        }
    }
}

func rodarFinal() {
    if(PaiHeroi.pedroHenrique.estaInfectado == false && FilhoHeroi.izaias.estaInfectado == false) {
        imprimirFinal()
    } else if((PaiHeroi.pedroHenrique.estaInfectado == true && FilhoHeroi.izaias.estaInfectado == false) || (PaiHeroi.pedroHenrique.estaInfectado == false && FilhoHeroi.izaias.estaInfectado == true)) {
        imprimirFinal()
    } else {
        imprimirFinal()
    }
}

func comecarJogo() {
    //Escolhendo contexto a sequir no jogo
    contextoEscolhido = escolherContexto()
    
    //Inicializando a array de Virus contidas na história
    escolherVirusDJogo()
    
    mostrarHistoriaBase()
    
    while(contContexto < 3) {
        if(!interrompeHistoria) {
            contextoEscolhido = rodarHistoriaEscolhida(historia: contextoEscolhido)
        } else {
            break
        }
        contContexto = contContexto + 1
    }
    
    rodarFinal()
    
    limpaVariaveis()
    
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
