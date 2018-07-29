//
//  SearchTableViewCell.swift
//  HackingRio
//
//  Created by Gabriel Almeida Hammes on 29/07/2018.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var labelViewCell: UILabel!
    @IBOutlet weak var imageViewCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
