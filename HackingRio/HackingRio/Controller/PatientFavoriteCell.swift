//
//  PatientFavoriteCell.swift
//  HackingRio
//
//  Created by Julia Maria Santos on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class PatientFavoriteCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var newAppointment: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(imageCell)
        name = UILabel()
        name.font = UIFont(name: "Helvetica-Bold", size: 15)
        name.numberOfLines = 1
        name.lineBreakMode = NSLineBreakMode.byTruncatingTail
        name.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(name)
        
        newAppointment = UIButton()
        newAppointment.backgroundColor = UIColor.black
        newAppointment.tintColor = UIColor.white
        self.addSubview(newAppointment)
        
        
    }
}
