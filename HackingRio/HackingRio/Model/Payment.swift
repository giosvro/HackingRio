//
//  Payment.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Payment: Codable {
    var patient: Patient
    
    init(patient: Patient) {
        self.patient = patient
    }
}
