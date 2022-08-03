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
    public var virusDisponiveis: [Virus]
    
    //Criando inicializador que conterão o contexto do RPG
    public init() {
        
        //Criando as variáveis que armazenaram o nome de cada um dos autores
        let pai = PaiHeroi.pedroHenrique.nome
        let filho = FilhoHeroi.izaias.nome
        
        //Setando todos vírus disponíveis no jogo
        self.virusDisponiveis = [
            Virus(
                nome: "HIV",
                seringaCompativel: Seringa("HIV"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Causador da aids, ataca o sistema imunológico, responsável por defender o organismo de doenças. As células mais atingidas são os linfócitos T CD4+. E é alterando o DNA dessa célula que o HIV faz cópias de si mesmo.\n\n"
            ),
            Virus(
                nome: "Raiva",
                seringaCompativel: Seringa("Raiva"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Normalmente, o vírus é transmitido por meio da mordida de um animal. No Brasil, gatos e cães são os principais transmissores. \nOs sintomas incluem febre, dor de cabeça, salivação excessiva, espasmos musculares, paralisia e confusão mental.\n\n"
            ),
            Virus(
                nome: "Hepatite B",
                seringaCompativel: Seringa("Hepatite B"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Doença infecciosa que agride o fígado, sendo causada por um vírus do tipo B. O vírus está presente no sangue e secreções, e também é classificado como uma infecção sexualmente transmissível.\n\n"
            ),
            Virus(
                nome: "Ebola",
                seringaCompativel: Seringa("Ebola"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Doença grave e fatal causada pela infecção com uma de suas espécies de vírus. O vírus pode provocar doenças humanos e primatas não-humanos (macacos, gorilas e chimpanzés).\n\n"
            ),
            Virus(
                nome: "Adenovírus",
                seringaCompativel: Seringa("Adenovírus"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Grupo de vírus que normalmente causam doenças respiratórias, como um resfriado comum, a conjuntivite (uma infecção no olho), crupe, bronquite ou pneumonia. Em crianças, geralmente causam infecções no trato respiratório e no trato intestinal.\n\n"
            ),
            Virus(
                nome: "Influenza",
                seringaCompativel: Seringa("Influenza"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Doença transmitida através do vírus e provoca febre, dores de garganta e outros sintomas. A maioria da população já deve ter contraído esse vírus em algum momento e, uma vez infectado, eleva sua capacidade de resistência (imunidade) contra este vírus.\n\n"
            ),
            Virus(
                nome: "Dengue",
                seringaCompativel: Seringa("Dengue"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Doença viral transmitida por mosquitos que ocorre em áreas tropicais e subtropicais. \nPessoas infectadas com o vírus pela segunda vez têm um risco significativamente maior de desenvolver doença grave.\n\n"
            ),
            Virus(
                nome: "Papilomavírus",
                seringaCompativel: Seringa("Papilomavírus"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Infecção que causa verrugas em diversas partes do corpo, dependendo do tipo do vírus. \nO papilomavírus humano (HPV) é a infecção sexualmente transmissível (DST) mais comum.\n\n"
            ),
            Virus(
                nome: "Rotavírus",
                seringaCompativel: Seringa("Rotavírus"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Trata-se de uma das mais importantes causas de diarréia grave em crianças menores de 5 anos no mundo, particularmente nos países em desenvolvimento.\n\n"
            ),
            Virus(
                nome: "Herpes Simples",
                seringaCompativel: Seringa("Herpes Simples"),
                caracteristicaVirus: "\n\nEspecificação do vírus: Vírus humano que causa infecções, que se caracteriza pelo aparecimento de pequenas bolhas agrupadas especialmente nos lábios e nos genitais, mas que podem surgir em qualquer outra parte do corpo.\n\n"
            )]
        
        self.tutorial = [
            "\n\nO jogo consiste em um quiz, onde o usuário deve identificar qual é o vírus no momento do encontro através das principais características desse vírus, como por exemplo: Causa Febre, Deixa a imunidade baixa, falta de ar.",
            "\nCaso o usuário identifique corretamente o vírus, ele poderá coletar a amostra para levar ao Doutor para fabricação da cura para os vírus.",
            "\nSerão três vírus no total selecionados de forma randômica, Boa sorte!",
            "\n.\n.\n."
        ]
        
     
        
        self.historiaBase = [
            "\n\nEm um mundo onde alguns vírus se espalhram pelo mundo e levou 80% da humanidade.",
            "\nNo começo eram vírus do tamanho de uma bactéria, mas eles evoluíram e agora eles tem o tamanho de um ser-humano",
            "\nAinda existem pessoas com esperanças que batalham contra o vírus atrás da cura, \(pai) e seu filho \(filho) são pessoas batalhando por isso.",
            "\n\(pai): Filho, parece que conseguimos novas seringas para poder pegar amostras dos vírus, mas só tem um problema, não sabemos se essas seringas vão ser compatíveis com os vírus! Então antes de pegarmos as amostras, devemos identificar o vírus que estamos lidando, e aí sim pegar as amostras",
            "\nExistem três vírus no total nos atormentando, então devemos pegar as 3 amostras e trazer de volta para o doutor, ai sim conseguiremos fabricar a cura da humanidade.\n\n"
        ]
        
        self.historiaCasoPrimeiro = [
            "\n\n\(pai): Vamos seguir por essa caverna, deve ter alguns vírus aqui, teremos a chance de capturar alguns!",
            "\n\nUm tempo depois...",
            "\n\n\(filho): Cuidado pai! tem um vírus atrás do senhor!",
            "\n\(pai): Obrigado por me avisar filho, vamos checar as principais características desse vírus e colher a amostra.",
            "ativa",
            "\n\(filho): Agora podemos seguir nossa trilha\n\n"
        ]
        
        self.historiaCasoSecundario = [
            "\n\n\(filho): Pai, devemos ir para o sul, lá tem uma alta concentração de vírus. Talvez seja uma boa ideia!",
            "\n\(pai): Tudo bem filho, Vamos lá!",
            "\n\nUm tempo depois...",
            "\n\n\(pai): Filho, achamos um novo vírus.",
            "ativa",
            "\n\(pai): Vamos para a próxima etapa filho, ainda conseguimos seguir.\n\n"
        ]
        
        self.historiaCasoTerciario = [
            "\n\n\(pai): Vamos aguardar um pouco onde estamos, talvez alguns vírus sejam atraídos pelo nosso cheiro.",
            "\n\(filho): Okay pai!",
            "\n\(pai): Que orgulho de você filho, está ficando igual sua mãe, valente. Nunca esqueça disso, Eu te am...",
            "\n\n*Barulho*",
            "\n\n\(filho): PAI! Achamos mais um vírus, pegue as seringas!",
            "ativa",
            "\n\(pai): Vamos continuar nosso trajeto filho, sempre com cuidado!\n\n"
        ]

    }
    

    func verificaESetaFinal() -> [String] {
        if(PaiHeroi.pedroHenrique.estaInfectado == true && FilhoHeroi.izaias.estaInfectado == true) {
            return [
                "\nGame Over :(, os dois heróis acabaram morrendo em batalha. Eles foram grandes homens, viveram sempre com o mesmo ditado em mente", "É melhor morrer tentando, do que viver com a dúvida de que se você tentasse um pouco mais... conseguiria.",
                "Os vírus se espalharam pelo mundo e em menos de 3 meses após a morte dos heróis, o mundo ja teria caído nas ruínas."
            ]
        } else if((PaiHeroi.pedroHenrique.estaInfectado == true && FilhoHeroi.izaias.estaInfectado == false) || (PaiHeroi.pedroHenrique.estaInfectado == false && FilhoHeroi.izaias.estaInfectado == true)) {
            return [
                "\nOs dois heróis conseguiram chegar ao laboratório, felizmente agora o mundo estará livre de dois vírus, mas ainda tem um a solta, aguarde os próximos capítulos para poder ajudar a eliminar o último vírus."
            ]
        } else {
            return [
                "\nAinda há esperanças, os heróis conseguiram chegar intactos e com as amostras de todos vírus que atormentavam o mundo.", "O doutor finalmente conseguirá fabricar a vacina que deixará as pessoas imune aos vírus! Final feliz, comemore :)"
            ]
        }
    }
    
}
