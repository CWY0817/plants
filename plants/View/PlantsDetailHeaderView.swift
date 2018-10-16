//
//  PlantsDetailHeaderView.swift
//  plants
//
//  Created by viplab on 2018/10/15.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsDetailHeaderView: UIView {

    @IBOutlet var headerimageView:UIImageView!
    @IBOutlet var nameLabel:UILabel!{
        didSet {
            nameLabel.numberOfLines = 0
        }
    }
}
