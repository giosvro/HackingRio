//
//  bankAccount.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class BankAccount: Codable {
    var bank: String
    var numberBank: Int?
    var account: String
    var agency: String
    
    init(bank: String,
         numberBank: Int? = nil,
         account: String,
         agency: String) {
        self.bank = bank
        self.numberBank = numberBank
        self.account = account
        self.agency = agency
    }
}
