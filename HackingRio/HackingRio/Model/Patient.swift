//
//  Patient.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Patient: Pessoa {
    var plano: String
    var regiao: String
    var consultas: [Consult]
    
    init(nome: String, nascimento : Date, telefone: String, email : String, cpf: String, plano: String, regiao: String, consultas: [Consult]) {
        self.plano = plano
        self.regiao = regiao
        self.consultas = consultas
        super.init(nome: nome, nascimento : nascimento, telefone: telefone, email : email, cpf: cpf)
    }
}
