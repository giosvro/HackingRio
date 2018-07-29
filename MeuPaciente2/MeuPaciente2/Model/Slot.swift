//
//  Slot.swift
//  MeuPaciente2
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 LOKTAR. All rights reserved.
//

import Foundation
class Slot: Codable {
    var timePerSlot: Int
    var date: Date
    var clinic: Clinic
    
    init(timePerSlot: Int, date: Date, clinic: Clinic) {
        self.timePerSlot = timePerSlot
        self.date = date
        self.clinic = clinic
    }
}
