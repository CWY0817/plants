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
    var plantslocation: Plantslocation = Plantslocation()
    var number:Int = 0
    var takelon = [Double](repeating:0,count:100)
    var takelat = [Double](repeating:0,count:100)
    @IBOutlet var tableView:UITableView!
    @IBOutlet var headerView: PlantsDetailHeaderView!

    //@IBOutlet var okok : UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        //導覽列
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .black
        tableView.contentInsetAdjustmentBehavior = .never
        
        
        //設定頭部視圖
        headerView.headerimageView.image = UIImage(named: plants.Cname)
        headerView.nameLabel.text = plants.Cname
       
        
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
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailIconTextCell.self), for: indexPath) as! PlantsDetailIconTextCell
            cell.iconimageview.image = UIImage(named: "pen")
            cell.familiatext.text = plants.Familia
            
            return cell
        case 1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "Book-128")
            cell.othernametext.text = plants.Sname
            
            return cell
        case 2 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "Red_pin")
            cell.othernametext.text = plants.Othername
            
            return cell
        case 3 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "earth")
            cell.othernametext.text = plants.Originplace
            
            return cell
        case 4 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "location-4")
            cell.othernametext.text = plants.Distribution
            
            return cell
        case 5 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "garden-1")
            cell.othernametext.text = plants.Application
            
            return cell
        case 6 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "Tree")
            cell.othernametext.text = plants.Stem
            
            return cell
        case 7 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "leaf-1")
            cell.othernametext.text = plants.Leaf
            
            return cell
        case 8 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "flower")
            cell.othernametext.text = plants.Flower
            
            return cell
        case 9 :
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailTextCell.self), for: indexPath) as! PlantsDetailTextCell
            cell.iconImageView.image = UIImage(named: "FRUIT-1")
            cell.othernametext.text = plants.Fruit
            
            return cell
        case 10:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailSeparatorCell.self), for: indexPath) as! PlantsDetailSeparatorCell
            cell.titleLabel.text = "How To Get There"
            
            return cell
        case 11:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlantsDetailMapCell.self), for: indexPath) as! PlantsDetailMapCell
           
            if number > 0 {
           for index in 0...number-1{
            cell.configure(plantsPid:plants.Pid,plantslocationPid:plantslocation.Pid,plantsCname:plants.Cname,plantsSname:plants.Sname,latitude:takelat[index] , longitude:takelon[index] )
                print(takelon[index])
             }
            }
            return cell
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }

    override func prepare(for segue: UIStoryboardSegue , sender: Any?){
        if segue.identifier == "showMap"{
            let destinationController = segue.destination as! MapViewController
            destinationController.plants = plants
            destinationController.plantslocation = plantslocation
            if number > 0{
            for index in 0...number-1{
                destinationController.takelat[index] = takelat[index]
                destinationController.takelon[index] = takelon[index]
            }
            destinationController.number = number
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
