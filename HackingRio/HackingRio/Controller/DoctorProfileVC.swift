//
//  DoctorProfileVC.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class DoctorProfileVC: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var telefoneLabel: UILabel!
    
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var crmLabel: UILabel!
    
    
    @IBOutlet weak var especialidadeLabel: UILabel!
    
    @IBOutlet weak var enderecoLabel: UILabel!
    
    let clinicsArray:[Clinic] = [Clinic(neighborhood: "Gávea", adress: "Marques de São Vicente, 11", telephone: "21 954067892", cnpj: "28391030392939"), Clinic(neighborhood: "Leblon", adress: "Rua João Lira, 351", telephone: "21 954237834", cnpj: "28391030392939"), Clinic(neighborhood: "Tijuca", adress: "Rua São Francisco Xavier, 300", telephone: "21 954067892", cnpj: "28391030392939")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.borderWidth = 1
        profileImage.layer.masksToBounds = false
        profileImage.layer.borderColor = UIColor.black.cgColor
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.clipsToBounds = true
        profileImage.image = UIImage(named: "Oval")
        nameLabel.text = SearchTabVC.favoriteDoctor[0].name
        telefoneLabel.text = SearchTabVC.favoriteDoctor[0].telephone
        emailLabel.text = SearchTabVC.favoriteDoctor[0].email
        crmLabel.text = SearchTabVC.favoriteDoctor[0].crm
        especialidadeLabel.text = SearchTabVC.favoriteDoctor[0].specialty
        enderecoLabel.text = clinicsArray[0].adress
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
