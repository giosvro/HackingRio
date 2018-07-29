//
//  Consult.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Appointment: Codable {
    var slot: Slot
    var payment: Payment
    var status: String
    
    init(slot: Slot, payment: Payment, status: String) {
        self.slot = slot
        self.payment = payment
        self.status = status
    }
}
