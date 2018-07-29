//
//  Pessoa.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Person: Codable {
    var name: String
    var age: String
    var telephone: String
    var email: String
    var cpf: String
    var bankAccount: BankAccount
    
    
    init(name: String, age: String, telephone: String, email: String, cpf: String, bankAccount: BankAccount){
        self.name = name
        self.age = age
        self.telephone = telephone
        self.email = email
        self.cpf = cpf
        self.bankAccount = bankAccount
    }
}
