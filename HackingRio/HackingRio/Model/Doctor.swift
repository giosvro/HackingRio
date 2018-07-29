//
//  Medico.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Doctor: Person {    
    var crm: String
    var picture: String
    var priceCharged: Double
    var specialty: String
    var id: String
    var slots: [Slot]
    
    init(crm:String, picture: String, priceCharged: Double, specialty : String, id : String, slots: [Slot], name: String, age: String, telephone: String, email: String, cpf: String, bankAccount: BankAccount) {
        self.crm = crm
        self.picture = picture
        self.priceCharged = priceCharged
        self.specialty = specialty
        self.id = id
        self.slots = slots
        super.init(name: name, age: age, telephone: telephone, email: email, cpf: cpf, bankAccount: bankAccount)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
