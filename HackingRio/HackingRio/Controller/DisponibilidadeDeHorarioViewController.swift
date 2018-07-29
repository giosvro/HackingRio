//
//  DisponibilidadeViewController.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class DisponibilidadeDeHorarioViewController: UIViewController {
    
    static var horaDeAtendimento: String!

    @IBOutlet weak var firstBut: UIButton!
    
    @IBOutlet weak var secondBut: UIButton!
    @IBOutlet weak var thirdBut: UIButton!
    @IBOutlet weak var fourthBut: UIButton!
    @IBAction func firstButton(_ sender: Any) {
        DisponibilidadeDeHorarioViewController.horaDeAtendimento = firstBut.titleLabel?.text
        
    }
    @IBAction func secondButton(_ sender: Any) {        DisponibilidadeDeHorarioViewController.horaDeAtendimento = secondBut.titleLabel?.text
        
    }
    @IBAction func thirdButton(_ sender: Any) {
        DisponibilidadeDeHorarioViewController.horaDeAtendimento = thirdBut.titleLabel?.text
        
    }
    @IBAction func fourthButton(_ sender: Any) {
        DisponibilidadeDeHorarioViewController.horaDeAtendimento = fourthBut.titleLabel?.text
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBut.backgroundColor = UIColor(hex: "7BCDE8")
        firstBut.tintColor = UIColor.white
        firstBut.layer.cornerRadius = 5
        firstBut.layer.borderWidth = 1
        firstBut.layer.borderColor = UIColor(hex: "7BCDE8").cgColor
        firstBut.layer.cornerRadius = 5
        
        secondBut.backgroundColor = UIColor(hex: "7BCDE8")
        secondBut.tintColor = UIColor.white
        secondBut.layer.cornerRadius = 5
        secondBut.layer.borderWidth = 1
        secondBut.layer.borderColor = UIColor(hex: "7BCDE8").cgColor
        secondBut.layer.cornerRadius = 5
        
        thirdBut.backgroundColor = UIColor(hex: "7BCDE8")
        thirdBut.tintColor = UIColor.white
        thirdBut.layer.cornerRadius = 5
        thirdBut.layer.borderWidth = 1
        thirdBut.layer.borderColor = UIColor(hex: "7BCDE8").cgColor
        thirdBut.layer.cornerRadius = 5
        
        fourthBut.backgroundColor = UIColor(hex: "7BCDE8")
        fourthBut.tintColor = UIColor.white
        fourthBut.layer.cornerRadius = 5
        fourthBut.layer.borderWidth = 1
        fourthBut.layer.borderColor = UIColor(hex: "7BCDE8").cgColor
        fourthBut.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
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
