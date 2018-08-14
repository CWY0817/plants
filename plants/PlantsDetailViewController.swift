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
    
    @IBOutlet var Plantsimg: UIImageView!
    
    @IBOutlet var Plantsname: UILabel!
    
    @IBOutlet var Plantslocation: UILabel!
    
    @IBOutlet var Plantstype: UILabel!

    @IBOutlet var okok : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        Plantsimg.image = UIImage(named: plants.image)
        Plantsname.text = plants.name
        Plantslocation.text = "位置: " + plants.location
        Plantstype.text = "特徵: " + plants.type
        navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   /* var booling = false
    @IBAction func button(sender:UIButton){
        let title1 = booling ? "我不瞭解這植物" : "我瞭解這植物"
        sender.titleLabel?.text = title1
        //okok.isHidden = 
        booling = true
    }*/

}
