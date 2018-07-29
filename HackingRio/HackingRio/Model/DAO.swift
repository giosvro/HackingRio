//
//  DAO.swift
//  HackingRio
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation
class DAO {
    static let shared = DAO()
    let clinicsArray:[Clinic] = [Clinic(neighborhood: "Gávea", adress: "Marques de São Vicente, 11", telephone: "21 954067892", cnpj: "28391030392939"), Clinic(neighborhood: "Leblon", adress: "Rua João Lira, 351", telephone: "21 954237834", cnpj: "28391030392939"), Clinic(neighborhood: "Tijuca", adress: "Rua São Francisco Xavier, 300", telephone: "21 954067892", cnpj: "28391030392939")]
    
    let patientsArray:[Patient] = [Patient(name: "Erika Andrade", age: "43", telephone: "923402934", email: "erika_andrade@gmail.com", cpf: "44918966829", bankAccount: BankAccount(bank: "Itaú", account: "xxxxxx-xxx-xxx", agency: "xyz"), adress: "lalalala", appointment: [], doctors: []), Patient(name: "Erika Andrade", age: "43", telephone: "923402934", email: "erika_andrade@gmail.com", cpf: "44918966829", bankAccount: BankAccount(bank: "Itaú", account: "xxxxxx-xxx-xxx", agency: "xyz"), adress: "lalalala", appointment: [], doctors: []), Patient(name: "Erika Andrade", age: "43", telephone: "923402934", email: "erika_andrade@gmail.com", cpf: "44918966829", bankAccount: BankAccount(bank: "Itaú", account: "xxxxxx-xxx-xxx", agency: "xyz"), adress: "lalalala", appointment: [], doctors: [])]

    let appointment:[Appointment] = [Appointment(slot: Slot(timePerSlot: 30, date: "10:00", clinic: DAO.shared.clinicsArray[0]), payment: Payment(patient: DAO.shared.patientsArray[0]) , status: " "), Appointment(slot: Slot(timePerSlot: 30, date: "10:00", clinic: DAO.shared.clinicsArray[0]), payment: Payment(patient: DAO.shared.patientsArray[0]) , status: " "), Appointment(slot: Slot(timePerSlot: 30, date: "10:00", clinic: DAO.shared.clinicsArray[0]), payment: Payment(patient: DAO.shared.patientsArray[0]) , status: " ")]

    let favoriteDoctor: [Doctor] = [Doctor(crm: "1111", picture: "", priceCharged: 300, specialty: "Cardio", id: "222", slots: [Slot(timePerSlot: 30, date: .init(), clinic: Clinic(neighborhood: "Barra", adress: "Pedra da Barra"))], name: "Simone Araújo", age: "34", telephone: "999999", email: "simone@email.com", cpf: "123456789", bankAccount: BankAccount(bank: "Bradesco", account: "1234", agency: "1234"))]
}
