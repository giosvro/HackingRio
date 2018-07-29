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
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
