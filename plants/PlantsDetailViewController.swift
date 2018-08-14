//
//  PlantsDetailViewController.swift
//  plants
//
//  Created by viplab on 2018/8/6.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsDetailViewController: UIViewController {
    @IBOutlet var Plantsimg: UIImageView!
    var Plantsimgname = ""
    
    @IBOutlet var Plantsname: UILabel!
    var plantsname = ""
    
    @IBOutlet var Plantslocation: UILabel!
    var plantslocation = ""
    
    @IBOutlet var Plantstype: UILabel!
    var plantstype = ""

    @IBOutlet var okok : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        Plantsimg.image = UIImage(named: Plantsimgname)
        Plantsname.text = plantsname
        Plantslocation.text = "位置: " + plantslocation
        Plantstype.text = "特徵: " + plantstype
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
