import UIKit


class Produto {

    var nome: String
    var descricao: String
    var preco: Float
    var unidade: String
    var quantidade: Int
    var fabricante: String

    init(nome: String, descricao: String, preco: Float, unidade: String, quantidade: Int, fabricante: String) {

        self.nome = nome
        self.descricao = descricao
        self.preco = preco
        self.unidade =  unidade
        self.quantidade = quantidade
        self.fabricante = fabricante
    }

    func getPreco() -> Float {
        return self.preco
    }

    func getQuantidade() -> Int {
        return self.quantidade
    }

    func setPreco(preco: Float) {
        self.preco = preco
    }

    func setQuantidade(qtd: Int) {
        self.quantidade = qtd
    }
  
    func getNomeeQuantidade() {
        print("Nome: \(self.nome) \n Quantidade: \(self.quantidade) ")
    }

}

class Pessoa {

    var nome: String
    var email: String
    var cpf: String
    var endereco: String
    var dataNascimento: Date
    var dataCadastro: Date
    
    init(nome: String, email: String, cpf: String, endereco: String, dataNascimento: Date, dataCadastro: Date) {

        self.nome = nome
        self.email = email
        self.cpf = cpf
        self.endereco = endereco
        self.dataNascimento = dataNascimento
        self.dataCadastro = dataCadastro
    }

    func getNome() -> String { return self.nome}

    func getDataNascimento() -> Date { return self.dataNascimento}
    
    func setNome(nome: String) { self.nome = nome}

    func setDataNascimento(data: Date) { self.dataNascimento = data}

    func setEmail(email: String) { self.email = email}

}

class Colaborador: Pessoa {

    var dataAdmissao: Date
    var dataDemissao: Date?
    var cargoInicial: String
    var cargoAtual: String
    var salario: Float
    var ctps: String
    

    init(nome: String, email: String, cpf: String, endereco: String, dataNascimento: Date, dataCadastro: Date, dataAdmissao: Date, dataDemissao: Date?, cargoInicial: String, cargoAtual: String, salario: Float, ctps: String ) {

        self.dataAdmissao = dataAdmissao
        self.dataDemissao = dataDemissao
        self.cargoInicial = cargoInicial
        self.cargoAtual = cargoAtual
        self.salario = salario
        self.ctps = ctps

        super.init(nome: nome, email: email, cpf: cpf, endereco: endereco, dataNascimento: dataNascimento, dataCadastro: dataCadastro)

    }

    func getDataAdmissao() -> Date { return self.dataAdmissao }

    func getSalario() -> Float { return self.salario }
    
    func setDataAdmissao(data: Date) { self.dataAdmissao = data}

    func setDataDemissao(data: Date) { self.dataDemissao = data }

    func setSalario(salario: Float)  { self.salario = salario }

}

// Exemplo criação de colaborador

var Daniel = Colaborador(nome: "Daniel", email: "dnl007@gmail.com", cpf: "98765432100", endereco: "Rua Beethoven", dataNascimento: Date(), dataCadastro: Date(), dataAdmissao: Date(), dataDemissao: nil, cargoInicial: "Desenvolvedor", cargoAtual: "Desenvolvedor", salario: 7.500, ctps: "00200185X")

print("Funcionario: \(Daniel.getNome()) \nNascimento: \(Daniel.getDataNascimento()) \nSalario: \(Daniel.getSalario())")
