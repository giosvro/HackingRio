//
//  TabSearchViewController.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class TabSearchViewController: UIViewController {

    @IBOutlet weak var textFieldButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldButton.backgroundColor = .white
        textFieldButton.tintColor = UIColor.white
        textFieldButton.layer.cornerRadius = 5
        textFieldButton.layer.borderWidth = 1
        textFieldButton.layer.borderColor = UIColor.white.cgColor
        textFieldButton.layer.cornerRadius = 5
        
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
