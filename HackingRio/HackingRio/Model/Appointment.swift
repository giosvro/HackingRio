//
//  Consult.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
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
