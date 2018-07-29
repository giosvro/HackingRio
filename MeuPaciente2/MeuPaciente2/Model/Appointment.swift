//
//  Appointment.swift
//  MeuPaciente2
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 LOKTAR. All rights reserved.
//

import Foundation
class Appointment: Codable {
    var patient: Patient
    var slot: Slot
    var payment: Double
    var status: String
    
    
    init(patient: Patient, slot: Slot, payment: Double, status: String) {
        self.patient = patient
        self.slot = slot
        self.payment = payment
        self.status = status
    }
}
