//
//  PlantsDetailIconTextCell.swift
//  plants
//
//  Created by viplab on 2018/10/15.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsDetailIconTextCell: UITableViewCell {
    
    
    @IBOutlet var iconimageview:UIImageView!
    @IBOutlet var familiatext :UILabel!{
        didSet{
            familiatext.numberOfLines=0
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
