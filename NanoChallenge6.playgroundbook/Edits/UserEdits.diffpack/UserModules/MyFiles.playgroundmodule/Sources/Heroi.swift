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
    
    //Inicializando variáveis do objeto
    public init(_ seringaHeroi: [Seringa], _ nome: String) { 
        self.nome = nome
        self.seringaHeroi = seringaHeroi
        self.estaInfectado = false
        self.comportamentoColherAmostra = IColherAmostra()
    }
}

 
