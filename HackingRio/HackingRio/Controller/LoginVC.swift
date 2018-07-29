//
//  LoginVC.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    let login = UITextField()
    let password = UITextField()
    let button = UIButton()
    
    let loginView: UIView = {
        let screenSize = UIScreen.main.bounds
        var view = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
        view.backgroundColor = .white
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //property
        self.login.placeholder = "E-mail"
        self.login.textAlignment = .center
        self.login.translatesAutoresizingMaskIntoConstraints = false
        self.login.borderStyle = .line
        self.login.clearButtonMode = .whileEditing
        self.login.autocorrectionType = .no
        self.password.placeholder = "Password"
        self.password.isSecureTextEntry = true
        self.password.textAlignment = .center
        self.password.borderStyle = .line
        self.password.translatesAutoresizingMaskIntoConstraints = false
        self.password.clearButtonMode = .whileEditing
        self.password.autocorrectionType = .no
        self.button.setTitle("Confirm", for: .normal)
        self.button.layer.borderColor = UIColor.black.cgColor
        self.button.layer.borderWidth = 2
        self.button.layer.cornerRadius = 3
        self.button.translatesAutoresizingMaskIntoConstraints = false
        self.button.backgroundColor = UIColor.black
        self.button.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
        
        //add to subview
        self.view.addSubview(loginView)
        self.loginView.addSubview(self.login)
        self.loginView.addSubview(self.password)
        self.loginView.addSubview(self.button)
        
        //constraints
        login.topAnchor.constraint(equalTo: self.loginView.topAnchor, constant: 150.0).isActive = true
        login.leftAnchor.constraint(equalTo: self.loginView.leftAnchor, constant: 30.0).isActive = true
        login.rightAnchor.constraint(equalTo: self.loginView.rightAnchor, constant: -30.0).isActive = true
        password.topAnchor.constraint(equalTo: self.login.topAnchor, constant: 50).isActive = true
        password.leftAnchor.constraint(equalTo: self.login.leftAnchor, constant: 0).isActive = true
        password.rightAnchor.constraint(equalTo: self.login.rightAnchor, constant: 0).isActive = true
        button.topAnchor.constraint(equalTo: self.password.topAnchor, constant: 50).isActive = true
        button.leftAnchor.constraint(equalTo: self.password.leftAnchor, constant: 0).isActive = true
        button.rightAnchor.constraint(equalTo: self.password.rightAnchor, constant: 0).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {

    }
  
    @objc func buttonAction(sender: UIButton) {
        if login.text == "Doctor@email.com" && password.text == "1234" {
            let navigationController = UINavigationController(rootViewController: DoctorTabBar())
            self.present(navigationController, animated: true, completion: nil)
        }
        if login.text == "Patient@email.com" && password.text == "5678" {
            let navigationController = UINavigationController(rootViewController: HomeTabBar())
            self.present(navigationController, animated: true, completion: nil)
        }
    }
}
