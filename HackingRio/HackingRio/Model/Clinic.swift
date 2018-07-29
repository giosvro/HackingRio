//
//  Clinic.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation

class Clinic: Codable {
    var neighborhood: String
    var adress: String
    var telephone: String?
    var cnpj: String?
    
    init(neighborhood: String, adress: String,
         telephone: String? = nil,
         cnpj: String? = nil) {
        self.neighborhood = neighborhood
        self.adress = adress
        self.telephone = telephone
        self.cnpj = cnpj
    }
}
