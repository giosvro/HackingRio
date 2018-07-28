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
    
    init(name: String, birth: Date, telephone: String, email: String, cpf: String, bankAccount: BankAccount, adress: String, appointment: [Appointment]) {
        self.adress = adress
        self.appointment = appointment
        super.init(name: name, birth: birth, telephone: telephone, email: email, cpf: cpf, bankAccount: bankAccount)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
