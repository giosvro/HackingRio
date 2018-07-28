//
//  Medico.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Medico: Pessoa {
    
    var crm : String
    var foto: String
    var valorCobraPrivado : Double
    var especialidade : String
    var identificador : String
    
    init(crm:String, foto:String, valorCobraPrivado: Double, especialidade : String, identificador : String,nome: String, nascimento : Date, telefone: String, email : String, cpf: String) {
        self.crm = crm
        self.foto = foto
        self.valorCobraPrivado = valorCobraPrivado
        self.especialidade = especialidade
        self.identificador = identificador
        super.init(nome: nome, nascimento : nascimento, telefone: telefone, email : email, cpf: cpf)
    }
}
