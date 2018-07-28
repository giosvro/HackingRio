//
//  Slot.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Slot {
    var timePerSlot: Int
    var date: Date
    
    init(timePerSlot: Int, date: Date) {
        self.timePerSlot = timePerSlot
        self.date = date
    }
}
