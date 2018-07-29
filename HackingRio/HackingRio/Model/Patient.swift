//
//  Patient.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Patient: Person {
    var adress: String
    var appointment: [Appointment]
    
    init(name: String, age: String, telephone: String, email: String, cpf: String, bankAccount: BankAccount, adress: String, appointment: [Appointment]) {
        self.adress = adress
        self.appointment = appointment
        super.init(name: name, age: age, telephone: telephone, email: email, cpf: cpf, bankAccount: bankAccount)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
