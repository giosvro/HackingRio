//
//  Person.swift
//  MeuPaciente2
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 LOKTAR. All rights reserved.
//

import Foundation
class Person: Codable {
    var name: String
    var birth: Date
    var telephone: String
    var email: String
    var cpf: String
    var bankAccount: BankAccount
    
    
    init(name: String, birth: Date, telephone: String, email: String, cpf: String, bankAccount: BankAccount){
        self.name = name
        self.birth = birth
        self.telephone = telephone
        self.email = email
        self.cpf = cpf
        self.bankAccount = bankAccount
    }
}
