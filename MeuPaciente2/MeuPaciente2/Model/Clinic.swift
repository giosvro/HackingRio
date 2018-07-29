//
//  Clinic.swift
//  MeuPaciente2
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 LOKTAR. All rights reserved.
//

import Foundation
class Clinic: Codable {
    var adress: String
    var telephone: String?
    var cnpj: String?
    
    init(adress: String,
         telephone: String? = nil,
         cnpj: String? = nil) {
        self.adress = adress
        self.telephone = telephone
        self.cnpj = cnpj
    }
}
