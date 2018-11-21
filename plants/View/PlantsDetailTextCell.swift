//
//  PlantsDetailTextCell.swift
//  plants
//
//  Created by viplab on 2018/10/15.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsDetailTextCell: UITableViewCell {
    
    @IBOutlet var iconImageView:UIImageView!
    @IBOutlet var othernametext:UILabel!{
        didSet{
            othernametext.numberOfLines = 0
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
