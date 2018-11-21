//
//  PlantsTableViewCell.swift
//  plants
//
//  Created by viplab on 2018/8/6.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var familiaLabel : UILabel!
    @IBOutlet var snameLabel : UILabel!
    @IBOutlet var plantsimage : UIImageView! {
        didSet {
            plantsimage.layer.cornerRadius = plantsimage.bounds.width/2
            plantsimage.clipsToBounds = true
        }
    }
    @IBOutlet var heartIcon : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
