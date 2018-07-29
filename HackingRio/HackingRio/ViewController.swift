//
//  ViewController.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 28/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit
import Stripe

class ViewController: UIViewController,STPAddCardViewControllerDelegate {
    

    
    @IBAction func vaiButton(_ sender: Any) {
        
        // Setup add card view controller
        let addCardViewController = STPAddCardViewController()
        addCardViewController.delegate = self
        
        // Present add card view controller
        let navigationController = UINavigationController(rootViewController: addCardViewController)
        present(navigationController, animated: true)
    }
    
    @IBOutlet weak var msgBox: UITextView!
    //        @IBOutlet weak var msgBox: UITextView!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "Standard"
            msgBox.text = ""
            
            // Do any additional setup after loading the view.
        }
        
//        @IBAction func PaymentTapped(_ sender: UIButton) {
//            // Setup add card view controller
//            let addCardViewController = STPAddCardViewController()
//            addCardViewController.delegate = self
//
//            // Present add card view controller
//            let navigationController = UINavigationController(rootViewController: addCardViewController)
//            present(navigationController, animated: true)
//        }
        
        // MARK: STPAddCardViewControllerDelegate
        
        func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
            // Dismiss add card view controller
            dismiss(animated: true)
        }
        
        func addCardViewController(_ addCardViewController: STPAddCardViewController, didCreateToken token: STPToken, completion: @escaping STPErrorBlock) {
            dismiss(animated: true)
            
            print("Printing Strip response:\(token.allResponseFields)\n\n")
            print("Printing Strip Token:\(token.tokenId)")
            
            msgBox.text = "Sua consulta foi marcada! \nEnviaremos uma notificação próximo a data. \nQualquer imprevisto, lembre-se de cancelar :))"
            //        "Transaction success! \n\nHere is the Token: \(token.tokenId)\nCard Type: \(token.card!.funding.rawValue)\n\nSend this token or detail to your backend server to complete this payment."
            
            
        }
        
}

