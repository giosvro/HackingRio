//
//  Consult.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Consult {
    var patient: Patient
    var slot: [Slot]
    
    init(patient: Patient, slot: [Slot]) {
        self.patient = patient
        self.slot = slot
    }
}
