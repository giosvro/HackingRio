//
//  StandardVC.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 28/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit
import Stripe

class StandardVC: UIViewController, STPAddCardViewControllerDelegate {
    
    @IBOutlet weak var msgBox: UITextView!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Standard"
        msgBox.text = ""
        
    }
    
    @IBAction func PaymentTapped(_ sender: UIButton) {
        // Setup add card view controller
        let addCardViewController = STPAddCardViewController()
        addCardViewController.delegate = self
        
        // Present add card view controller
        let navigationController = UINavigationController(rootViewController: addCardViewController)
        present(navigationController, animated: true)
    }
    
    func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
        // Dismiss add card view controller
        dismiss(animated: true)
    }
    
    func addCardViewController(_ addCardViewController: STPAddCardViewController, didCreateToken token: STPToken, completion: @escaping STPErrorBlock) {
        dismiss(animated: true)
        
        print("Printing Strip response:\(token.allResponseFields)\n\n")
        print("Printing Strip Token:\(token.tokenId)")
        
        msgBox?.text = "Sua consulta foi marcada! \nEnviaremos uma notificação próximo a data. \nQualquer imprevisto, lembre-se de cancelar :))"
//        "Transaction success! \n\nHere is the Token: \(token.tokenId)\nCard Type: \(token.card!.funding.rawValue)\n\nSend this token or detail to your backend server to complete this payment."
        
    }
    
}
