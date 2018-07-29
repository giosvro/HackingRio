//
//  DoctorScheduleItem.swift
//  HackingRio
//
//  Created by Jessica Hollander on 29/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import Foundation
import UIKit

class DoctorScheduleCell: UICollectionViewCell{
    var imageView: UIImageView!
    var name: UILabel!
    var age: UILabel!
    var phone: UIButton!
    var cancel: UIButton!
    var notifyDelay: UIButton!
    var appointmentTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(imageView)
        name = UILabel()
        name.font = UIFont(name: "Helvetica-Bold", size: 15)
        name.numberOfLines = 1
        name.lineBreakMode = NSLineBreakMode.byTruncatingTail
        name.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(name)
        
        age = UILabel()
        age.font = UIFont(name: "Helvetica-Regular", size: 15)
        age.numberOfLines = 1
        age.lineBreakMode = NSLineBreakMode.byTruncatingTail
        age.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(age)
        
        phone = UIButton()
        phone.titleLabel?.font = UIFont(name: "Helvetica-Regular", size: 15)
        phone.titleLabel?.textColor = UIColor(hex: "F7F0F0")
        phone.backgroundColor = UIColor(hex: "1199C5")
        phone.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(phone)
        
        appointmentTime = UILabel()
        appointmentTime.font = UIFont(name: "Helvetica-Bold", size: 16)
        appointmentTime.textColor = UIColor(hex: "7BCDE8")
        appointmentTime.textAlignment = NSTextAlignment.center
        appointmentTime.transform = CGAffineTransform.init(rotationAngle: -90)
        appointmentTime.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(appointmentTime)
        
        //Constraints
        appointmentTime.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        
        imageView.leftAnchor.constraint(equalTo: appointmentTime.rightAnchor, constant: 18).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        name.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 26).isActive = true
        
        age.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10).isActive = true

    }
}
