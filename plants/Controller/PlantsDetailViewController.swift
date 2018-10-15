//
//  PlantsDetailViewController.swift
//  plants
//
//  Created by viplab on 2018/8/6.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsDetailViewController: UIViewController {
    
    
    var plants: Plants = Plants()
    @IBOutlet var tableView:UITableView!
    @IBOutlet var headerView: PlantsDetailHeaderView!

    //@IBOutlet var okok : UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        //設定頭部視圖
        headerView.headerimageView.image = UIImage(named: plants.image)
        headerView.nameLabel.text = plants.name
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
