//
//  PatientFavoriteVC.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class PatientFavoriteVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let favoriteView: UIView = {
        let screenSize = UIScreen.main.bounds
        var view = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(favoriteView)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.present(DoctorProfileVC(), animated: true, completion: nil)
    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return DAO.shared.favoriteDoctor.count
//    }

//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        <#code#>
//    }
}
