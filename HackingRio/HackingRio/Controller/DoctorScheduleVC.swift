//
//  DoctorScheduleVC.swift
//  HackingRio
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation
import UIKit

class DoctorScheduleVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    var collectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        collectionView = UICollectionView()
        
        //MARK: Collection View Layout
        let frame = CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.height)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 354 , height: 90)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        
        collectionView.delegate   = self
        collectionView.dataSource = self
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(DoctorScheduleCell.self, forCellWithReuseIdentifier: "AppointmentItem")
        self.view.addSubview(collectionView)
        
        //MARK: Collection View Constraints
        
        
        
        collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 130).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalToConstant: self.view.frame.size.width).isActive = true
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 354, height: 90)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return DAO.shared.clinicsArray.count
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return DAO.shared.patientsArray.count
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppointmentItem", for: indexPath) as! DoctorScheduleCell
//        let patient = DAO.shared.patientsArray[indexPath.row]
//        let appointment = DAO.shared.appointment[indexPath.row]
//        cell.name.text = patient.name
//        cell.age.text = patient.age
//        cell.imageView.image = UIImage(named: "profile")
//        cell.appointmentTime.text = appointment.slot.date
        cell.addSubview(cell.name)
        cell.addSubview(cell.age)
        cell.addSubview(cell.imageView)
        cell.addSubview(cell.appointmentTime)
        cell.name.text = "nome"
        cell.age.text = "40 anos"
        cell.imageView.image = UIImage(named: "profile")
        cell.appointmentTime.text = "10:00"
        
        return cell
    }
  
}
