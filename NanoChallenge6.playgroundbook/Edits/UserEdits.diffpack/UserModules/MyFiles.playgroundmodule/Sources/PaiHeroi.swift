public class PaiHeroi: Heroi {
    //Variável que transforma a classe em uma do tipo singleton
    static let pedroHenrique = PaiHeroi(seringaHeroi: [
        Seringa("HIV")
    ], nome: "Pedro Henrique")
    
    init(seringaHeroi: [Seringa], nome: String) {
        super.init(seringaHeroi, nome)
    }
}
