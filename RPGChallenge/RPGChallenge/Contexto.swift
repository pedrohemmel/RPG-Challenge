//
//  Contexto.swift
//  RPGChallenge
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 01/08/22.
//

import Foundation


//Criando a classe que conterá o contexto da história
//Essa será uma classe do tipo singleton, pois vou instanciar um objeto do tipo da classe dentro dela mesma
public class Contexto {
    public var tutorial: [String]
    public var historiaBase: [String]
    public var historiaCasoPrimeiro : [String]
    public var historiaCasoSecundario : [String]
    public var historiaCasoTerciario : [String]
    public var mensagemFoiInfectado: [String]
    public var virusDisponiveis: [Virus]
    
    //Criando inicializador que conterão o contexto do RPG
    public init() {
        
        //Criando as variáveis que armazenaram o nome de cada um dos autores
        let pai = PaiHeroi.pedroHenrique.nome
        let filho = FilhoHeroi.izaias.nome
        let doutor = DoutorHeroi.doutorFabio.nome
        
        //Setando todos vírus disponíveis no jogo
        self.virusDisponiveis = [
            Virus(
                nome: "HIV",
                seringaCompativel: Seringa("HIV"),
                caracteristicaVirus: "Causador da aids, ataca o sistema imunológico, responsável por defender o organismo de doenças. As células mais atingidas são os linfócitos T CD4+. E é alterando o DNA dessa célula que o HIV faz cópias de si mesmo."),
            Virus(
                nome: "Raiva",
                seringaCompativel: Seringa("Raiva"),
                caracteristicaVirus: "\nNormalmente, o vírus é transmitido por meio da mordida de um animal. No Brasil, gatos e cães são os principais transmissores. \nOs sintomas incluem febre, dor de cabeça, salivação excessiva, espasmos musculares, paralisia e confusão mental."),
            Virus(
                nome: "Hepatite B",
                seringaCompativel: Seringa("Hepatite B"),
                caracteristicaVirus: "\nDoença infecciosa que agride o fígado, sendo causada por um vírus do tipo B. O vírus está presente no sangue e secreções, e também é classificado como uma infecção sexualmente transmissível."),
            Virus(
                nome: "Ebola",
                seringaCompativel: Seringa("Ebola"),
                caracteristicaVirus: "\nDoença grave e fatal causada pela infecção com uma de suas espécies de vírus. O vírus pode provocar doenças humanos e primatas não-humanos (macacos, gorilas e chimpanzés)."),
            Virus(
                nome: "Adenovírus",
                seringaCompativel: Seringa("Adenovírus"),
                caracteristicaVirus: "\nGrupo de vírus que normalmente causam doenças respiratórias, como um resfriado comum, a conjuntivite (uma infecção no olho), crupe, bronquite ou pneumonia. Em crianças, geralmente causam infecções no trato respiratório e no trato intestinal."),
            Virus(
                nome: "Influenza",
                seringaCompativel: Seringa("Influenza"),
                caracteristicaVirus: "\nDoença transmitida através do vírus e provoca febre, dores de garganta e outros sintomas. A maioria da população já deve ter contraído esse vírus em algum momento e, uma vez infectado, eleva sua capacidade de resistência (imunidade) contra este vírus."),
            Virus(
                nome: "Dengue",
                seringaCompativel: Seringa("Dengue"),
                caracteristicaVirus: "\nDoença viral transmitida por mosquitos que ocorre em áreas tropicais e subtropicais. \nPessoas infectadas com o vírus pela segunda vez têm um risco significativamente maior de desenvolver doença grave."),
            Virus(
                nome: "Papilomavírus",
                seringaCompativel: Seringa("Papilomavírus"),
                caracteristicaVirus: "\nInfecção que causa verrugas em diversas partes do corpo, dependendo do tipo do vírus. \nO papilomavírus humano (HPV) é a infecção sexualmente transmissível (DST) mais comum."),
            Virus(
                nome: "Rotavírus",
                seringaCompativel: Seringa("Rotavírus"),
                caracteristicaVirus: "\nTrata-se de uma das mais importantes causas de diarréia grave em crianças menores de 5 anos no mundo, particularmente nos países em desenvolvimento."),
            Virus(
                nome: "Herpes Simples",
                seringaCompativel: Seringa("Herpes Simples"),
                caracteristicaVirus: "\nVírus humano que causa infecções, que se caracteriza pelo aparecimento de pequenas bolhas agrupadas especialmente nos lábios e nos genitais, mas que podem surgir em qualquer outra parte do corpo.")]
        
        self.tutorial = [
            "",
            "\nO jogo consiste em um quiz, onde o usuário deve identificar qual é o vírus no momento do encontro através das principais características desse vírus, como por exemplo: Causa Febre, Deixa a imunidade baixa, falta de ar.",
            "\nCaso o usuário identifica corretamente o vírus, ele poderá coletar a amostra para levar ao Doutor para fabricação da cura para os vírus.",
            "\nSerão três vírus no total selecionados de forma randômica, Boa sorte!",
            ".\n.\n."]
        
        self.mensagemFoiInfectado = ["Trágico... O herói a seguir acabou de ser infectado! A partir de agora conseguirá apenas andar","Todos heróis foram infectados, no final o mundo perdeu para os malditos vírus!"]
        
        self.historiaBase = [
            "\nEm um mundo onde alguns vírus se espalhram pelo mundo e levou 80% da humanidade.",
            "\nNo começo eram vírus do tamanho de uma bactéria, mas eles evoluíram e agora eles tem o tamanho de um ser-humano",
            "\nAinda existem pessoas com esperanças que batalham contra o vírus atrás da cura, \(pai) e seu filho \(filho) são pessoas batalhando por isso.",
            "\n\(pai): Filho, parece que conseguimos novas seringas para poder pegar amostras dos vírus, mas só tem um problema, não sabemos se essas seringas vão ser compatíveis com os vírus! Então antes de pegarmos as amostras, devemos identificar o vírus que estamos lidando, e aí sim pegar as amostras",
            "Devemos pegar as 3 amostras e trazer de volta para o doutor, ai sim conseguiremos fabricar a cura da humanidade."]
        
        self.historiaCasoPrimeiro = [
            "\n\(pai): Vamos seguir por essa caverna, deve ter alguns vírus aqui, teremos a chance de capturar alguns!",
            ".",
            ".",
            ".",
            "\nUm tempo depois.",
            "\n\(filho): Cuidado pai! tem um vírus atrás do senhor!",
            "\n\(pai): Obrigado por me avisar filho, vamos checar as principais características desse vírus e colher a amostra.",
            "ativa",
            "\n\(filho): Agora podemos seguir nossa trilha"]
        
        self.historiaCasoSecundario = [
            "\n\(filho): Pai, devemos ir para o sul, lá tem uma alta concentração de vírus. Talvez seja uma boa ideia!",
            "\n\(pai): Tudo bem filho, Vamos lá!",
            "\nUm tempo depois...",
            "\n\(pai): Filho, achamos um novo vírus.",
            "ativa",
            "\n\(pai): Vamos para a próxima etapa filho, ainda conseguimos seguir."]
        
        self.historiaCasoTerciario = [
            "\n\(pai): Vamos aguardar um pouco onde estamos, talvez alguns vírus sejam atraídos pelo nosso cheiro.",
            "\n\(filho): Okay pai!",
            "\n\(pai): Que orgulho de você filho, está ficando igual sua mãe, valente igual. Nunca esqueça disso, Eu te am...",
            "*Barulho*",
            "\(filho): PAI! Achamos mais um vírus, pegue as seringas!",
            "ativa",
            "\n\(pai): Vamos continuar nosso trajeto filho, sempre com cuidado!"]
        
        

    }
    
    
    
    
    
}
