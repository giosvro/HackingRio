//
//  DAO.swift
//  HackingRio
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation
class DAO{
    static let shared = DAO()
    let clinicsArray:[Clinic] = [Clinic(neighborhood: "Gávea", adress: "Marques de São Vicente, 11", telephone: "21 954067892", cnpj: "28391030392939"), Clinic(neighborhood: "Leblon", adress: "Rua João Lira, 351", telephone: "21 954237834", cnpj: "28391030392939"), Clinic(neighborhood: "Tijuca", adress: "Rua São Francisco Xavier, 300", telephone: "21 954067892", cnpj: "28391030392939")]
    let patientsArray:[Patient] = [Patient(name: "Erika Andrade", age: "43", telephone: "923402934", email: "erika_andrade@gmail.com", cpf: "44918966829", bankAccount: BankAccount(bank: "Itaú", account: "xxxxxx-xxx-xxx", agency: "xyz"), adress: "lalalala", appointment: [], doctors: [])]

    let appointment:[Appointment] = [Appointment(slot: Slot(timePerSlot: 30, date: Date(), clinic: DAO.shared.clinicsArray[0]), payment: Payment(patient: DAO.shared.patientsArray[0]) , status: " ")]

}
