//
//  Payment.swift
//  MeuPaciente2
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 LOKTAR. All rights reserved.
//

import Foundation
class Payment: Codable {
    var patient: Patient
    
    init(patient: Patient) {
        self.patient = patient
    }
}
