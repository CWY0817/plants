//
//  PlantsTableViewController.swift
//  plants
//
//  Created by viplab on 2018/8/6.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - 植物class陣列
    var plants:[Plants]=[
        Plants(name:"南天竹", type:"葉為三回羽狀複葉" , location:"圖書管前" , image:"南天竹1" , isee: false),
        Plants(name:"海桐", type:"葉簇生枝端,呈倒卵形" , location:"管院步道旁" , image: "海桐1", isee: false),
        Plants(name:"石栗", type:"葉脈明顯,有明顯星狀毛" ,location:"香楠步道旁" , image:"石栗1", isee: false),
        Plants(name:"五掌楠", type:"葉輪生,離基三出脈" , location:"行政大樓旁" , image:"五掌楠1" , isee: false),
        Plants(name:"楓香", type:"葉多為三裂" , location:"行政大樓旁" , image:"楓香1" , isee: false),
        Plants(name:"黃花風鈴木", type:"掌狀複葉,葉形略呈倒卵形" , location:"科院前主環道內草皮" , image:"黃花風鈴木1" , isee: false),
        Plants(name:"烏皮九芎", type:"葉脈有毛" , location:"機車道警衛室旁" , image:"烏皮九芎1" , isee: false),
        Plants(name:"芒果", type:"圓錐花序,葉脈明顯" , location:"管院旁" , image:"芒果1" , isee: false),
        Plants(name:"鐵冬青", type:"花梗無毛,葉光滑" , location:"科院外環道" , image:"鐵冬青1" , isee: false),
        Plants(name:"風鈴木", type:"掌狀複葉,有鋸齒緣" , location:"暨大7-11後" , image:"風鈴木1" , isee: false),
        Plants(name:"黃鵪菜", type:"根生葉,羽狀深裂" , location:"人文學院" , image:"黃鵪菜1" , isee: false),
        Plants(name:"江某", type:"幼樹上的小葉會不規則裂且為掌狀複葉" , location:"機車道" , image:"江某1" , isee: false),
        Plants(name:"台灣赤楠", type:"葉對生,葉背紋路細緻明顯" , location:"暨大7-11前" , image:"台灣赤楠1" , isee: false),
        Plants(name:"桂花", type:"葉全緣或細鋸齒" , location:"暨大7-11旁" , image:"桂花1" , isee: false),
        Plants(name:"奧氏虎皮楠", type:"莖直立或斜上" , location:"行政大樓停車場旁草地" , image:"奧氏虎皮楠1" , isee: false),
        Plants(name:"欖仁樹", type:"花雄蕊十枚,內外兩圈各五枚" , location:"綜合大樓停車場旁" , image:"欖仁樹1" , isee: false),
        Plants(name:"台灣海桐", type:"葉搓揉會有特殊香味" , location:"科一停車場" , image:"台灣海桐1" , isee: false),
        Plants(name:"九芎", type:"光滑的樹幹" , location:"機車道" , image:"九芎1" , isee: false)
    ]

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return plants.count
    }

    //MARK: - 建立Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellidentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath)as! PlantsTableViewCell

        cell.nameLabel.text = plants[indexPath.row].name
        cell.locationLabel.text = "位置: " + plants[indexPath.row].location
        cell.typeLabel.text = "特徵: " + plants[indexPath.row].type
        cell.plantsimage.image = UIImage(named: plants[indexPath.row].name)
        cell.heartIcon.isHidden = plants[indexPath.row].isee ? false : true

        return cell
    }

    //MARK: - 向左滑動
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?{
        
        //刪除
        let deleteAction = UIContextualAction(style:.destructive,title: "Delete"){(action,sourceView,completionHandler) in
            
            self.plants.remove(at: indexPath.row)
            
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        deleteAction.backgroundColor = UIColor(red:231.0/255.0,green:76.0/255.0,blue:60.0/255.0,alpha:1.0)
        deleteAction.image = UIImage(named: "delete")
        
        //分享
        let shareAction = UIContextualAction(style:.normal,title:"Share"){(action,sourceView,completionHandler) in
            
            let sharetext = "去看看這植物吧🌳"
            
            let activityController : UIActivityViewController
            if let shareimage = UIImage(named: self.plants[indexPath.row].image){
                activityController = UIActivityViewController(activityItems: [shareimage,sharetext], applicationActivities: nil)
            }
            else{
                activityController = UIActivityViewController(activityItems: [sharetext], applicationActivities: nil)
            }
            
            if let popoverController = activityController.popoverPresentationController{
                if let cell = tableView.cellForRow(at: indexPath){
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            
            self.present(activityController,animated: true,completion: nil)
            completionHandler(true)
        }
        shareAction.backgroundColor = UIColor(red:254.0/255.0,green:149.0/255.0,blue:38.0/255.0,alpha:1.0)
        shareAction.image = UIImage(named: "share")
        
        //check
        let title2 = plants[indexPath.row].isee ? "Undo Check" : "Check"
        let booling2 = plants[indexPath.row].isee ? false : true
        
        let checkAction2 = UIContextualAction(style:.normal,title:title2){(action,sourceView,completionHandler) in
            let cell = tableView.cellForRow(at: indexPath)as!PlantsTableViewCell
            cell.heartIcon.isHidden = booling2 ? false : true
            self.plants[indexPath.row].isee = booling2
            completionHandler(true)
        }
        let img = booling2 ? "tick" : "undo"
        checkAction2.image = UIImage(named: img)
        
        
        let Swipe = UISwipeActionsConfiguration(actions: [deleteAction,shareAction,checkAction2])
        
        return Swipe
        
    }
    
    // MARK: - 傳遞資料給另一個視圖
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showplantsdetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destination = segue.destination as!PlantsDetailViewController
                destination.plants = plants[indexPath.row]
            }
        }
        
    }


}
