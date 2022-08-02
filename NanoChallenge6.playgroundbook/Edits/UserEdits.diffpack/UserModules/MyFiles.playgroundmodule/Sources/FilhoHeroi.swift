
public class FilhoHeroi: Heroi {
    //Variável que transforma a classe em uma do tipo singleton
    static let izaias = FilhoHeroi(seringaHeroi: [
        Seringa("HIV")
    ], nome: "Izaias")
    
    init(seringaHeroi: [Seringa], nome: String) {
        super.init(seringaHeroi, nome)
    }
}

