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
        let doutor = DoutorHeroi.doutorFabio.nome
        
        self.historiaBase = [
            "\nEm um mundo onde alguns vírus se espalhram pelo mundo e levou 80% da humanidade.",
            "\nNo começo eram vírus do tamanho de uma bactéria, mas eles evoluíram e agora eles tem o tamanho de um ser-humano",
            "\nAinda existem pessoas com esperanças que batalham contra o vírus atrás da cura, \(pai) e seu filho \(filho) são pessoas batalhando por isso.",
            "\n\(pai): Filho, parece que conseguimos novas seringas para poder pegar amostras dos vírus, mas só tem um problema, não sabemos se essas seringas vão ser compatíveis com os vírus! Então antes de pegarmos as amostras, devemos identificar o vírus que estamos lidando, e aí sim pegar as amostras"]
        
        self.tutorial = [
            "",
            "\nO jogo consiste em um quiz, onde o usuário deve identificar qual é o vírus no momento do encontro através das principais características desse vírus, como por exemplo: Causa Febre, Deixa a imunidade baixa, falta de ar.",
            "\nCaso o usuário identifica corretamente o vírus, ele poderá coletar a amostra para levar ao Doutor para fabricação da cura para os vírus.",
            "\nSerão três vírus no total selecionados de forma randômica, Boa sorte!",
            ".\n.\n."]
        
        self.historiaCasoPrimeiro = [""]
        self.historiaCasoSecundario = ["Case2"]
        self.historiaCasoTerciario = ["Case3"]
        
        self.virusDisponiveis = [
            Virus(nome: "HIV", seringaCompativel: Seringa("HIV")),
            Virus(nome: "Raiva", seringaCompativel: Seringa("Raiva")),
            Virus(nome: "Hepatite B", seringaCompativel: Seringa("Hepatite B")),
            Virus(nome: "Ebola", seringaCompativel: Seringa("Ebola")),
            Virus(nome: "Adenovírus", seringaCompativel: Seringa("Adenovírus")),
            Virus(nome: "Influenza", seringaCompativel: Seringa("Influenza")),
            Virus(nome: "Bacteriófago", seringaCompativel: Seringa("Bacteriófago")),
            Virus(nome: "Papilomavírus", seringaCompativel: Seringa("Papilomavírus")),
            Virus(nome: "Rotavírus", seringaCompativel: Seringa("Rotavírus")),
            Virus(nome: "Herpes Simples", seringaCompativel: Seringa("Herpes Simples"))]//oi

    }
    
    
    
    
    
}
