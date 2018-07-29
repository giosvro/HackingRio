//
//  PrePagamentoViewController.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit
import Stripe

class PrePagamentoViewController: UIViewController, STPAddCardViewControllerDelegate {
    func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
        
    }
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var consultaView: UIView!
    @IBOutlet weak var consultaLabe: UILabel!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var horaLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    @IBOutlet weak var pagamentoView: UIView!
    @IBOutlet weak var marcaLabel: UILabel!
    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var confirmarBtn: UIButton!
    
    @IBAction func PaymentTapped(_ sender: UIButton) {
        // Setup add card view controller
        let addCardViewController = STPAddCardViewController()
        addCardViewController.delegate = self
        
        // Present add card view controller
        let navigationController = UINavigationController(rootViewController: addCardViewController)
        present(navigationController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.consultaView.layer.shadowColor = UIColor.black.cgColor
        self.consultaView.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.consultaView.layer.shadowOpacity = 0.2
        self.consultaView.layer.shadowRadius = 1.0
        self.consultaView.clipsToBounds = false
        self.consultaView.layer.masksToBounds = false
        self.consultaView.layer.cornerRadius = 23
        let border = CALayer()
        let width = CGFloat(3.0)
        border.borderColor = UIColor(hex: "7BCDE8").cgColor
        border.frame = CGRect(x: width, y: 0, width: 3, height: self.consultaView.frame.size.height)
        
        border.borderWidth = width
        self.consultaView.layer.addSublayer(border)
        self.consultaView.layer.masksToBounds = true
        
        
        
        imageView.image = UIImage(named: "OvalColorido")
        
        confirmarBtn.backgroundColor = UIColor(hex: "7BCDE8")
        confirmarBtn.tintColor = UIColor.white
        confirmarBtn.layer.borderWidth = 1
        confirmarBtn.layer.borderColor = UIColor(hex: "7BCDE8").cgColor
        
        
//        self.pagamentoView.layer.cornerRadius = 23
//        let pagamentoViewBorder = CALayer()
//        let pagamentoViewWidth = CGFloat(3.0)
//        pagamentoViewBorder.borderColor = UIColor(hex: "7BCDE8").cgColor
//        pagamentoViewBorder.frame = CGRect(x: width, y: 0, width: 3, height: self.pagamentoView.frame.size.height)
//        
//        pagamentoViewBorder.borderWidth = pagamentoViewWidth
//        self.pagamentoView.layer.addSublayer(pagamentoViewBorder)
//        self.pagamentoView.layer.masksToBounds = true
        // Do any additional setup after loading the view.
        dataLabel.text = DisponibilidadeViewController.diaDeAtendimento
        horaLabel.text = DisponibilidadeDeHorarioViewController.horaDeAtendimento
        enderecoLabel.text = SearchTabVC.favoriteDoctor[0].slots[0].clinic.adress
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
