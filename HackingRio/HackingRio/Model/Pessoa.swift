//
//  Pessoa.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Pessoa {
    
    var nome : String
    var nascimento : Date
    var telefone : String
    var email : String
    var cpf : String
    
    
    init(nome: String, nascimento : Date, telefone: String, email : String, cpf: String){
        self.nome = nome
        self.nascimento = nascimento
        self.telefone = telefone
        self.email = email
        self.cpf = cpf
    }
}
