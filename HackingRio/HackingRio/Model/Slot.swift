//
//  Slot.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Slot: Codable {
    var timePerSlot: Int
    var date: String
    var clinic: Clinic
    
    init(timePerSlot: Int, date: String, clinic: Clinic) {
        self.timePerSlot = timePerSlot
        self.date = date
        self.clinic = clinic
    }
}
