//
//  PlantsDetailViewController.swift
//  plants
//
//  Created by viplab on 2018/8/6.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsDetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    var plants: Plants = Plants()
    @IBOutlet var tableView:UITableView!
    @IBOutlet var headerView: PlantsDetailHeaderView!

    //@IBOutlet var okok : UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .black
        //tableView.contentInsetAdjustmentBehavior = .never
        
        
        //設定頭部視圖
        headerView.headerimageView.image = UIImage(named: plants.name)
        headerView.nameLabel.text = plants.name
       
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailIconTextCell.self), for: indexPath) as! PlantsDetailIconTextCell
            cell.iconimageview.image=UIImage(named: "Location-2")
            cell.locationtext.text = plants.location
            
            return cell
        case 1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "Book-128")
            cell.typetext.text = plants.type
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailSeparatorCell.self), for: indexPath) as! PlantsDetailSeparatorCell
            cell.titleLabel.text = "How To Get There"
            
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailMapCell.self), for: indexPath) as! PlantsDetailMapCell

            return cell
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
