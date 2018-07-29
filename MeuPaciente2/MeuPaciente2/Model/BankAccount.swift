//
//  BankAccount.swift
//  MeuPaciente2
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 LOKTAR. All rights reserved.
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
