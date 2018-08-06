//
//  PlantsTableViewController.swift
//  plants
//
//  Created by viplab on 2018/8/6.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit

class PlantsTableViewController: UITableViewController {
    
    var PlantsName = ["南天竹","海桐","石栗","五掌楠","楓香","黃花風鈴木","烏皮九芎","芒果","鐵冬青","風鈴木","黃鵪菜","江某","台灣赤楠","桂花","奧氏虎皮楠","欖仁樹","台灣海桐","九芎"]
    var PlantsLocation = ["圖書管前","管院步道旁","香楠步道旁","行政大樓旁","行政大樓旁","科院前主環道內草皮","機車道警衛室旁","管院旁","科院外環道","暨大7-11後","人文學院","機車道","暨大7-11前","暨大7-11旁","行政大樓停車場旁草地","綜合大樓停車場旁","科一停車場","機車道"]
    var PlantsType = ["葉為三回羽狀複葉","葉簇生枝端,呈倒卵形","葉脈明顯,有明顯星狀毛","葉輪生,離基三出脈","葉多為三裂","掌狀複葉,葉形略呈倒卵形","葉脈有毛","圓錐花序,葉脈明顯","花梗無毛,葉光滑","掌狀複葉,有鋸齒緣","根生葉,羽狀深裂","幼樹上的小葉會不規則裂且為掌狀複葉","葉對生,葉背紋路細緻明顯","葉全緣或細鋸齒","莖直立或斜上","花雄蕊十枚,內外兩圈各五枚","葉搓揉會有特殊香味","光滑的樹幹"]
    var PlantsBool = Array(repeating:false, count:21)

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlantsName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellidentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath)as! PlantsTableViewCell

        cell.nameLabel.text = PlantsName[indexPath.row]
        cell.locationLabel.text = "位置: " + PlantsLocation[indexPath.row]
        cell.typeLabel.text = "特徵: " + PlantsType[indexPath.row]
        cell.plantsimage.image = UIImage(named: PlantsName[indexPath.row])
        
        cell.accessoryType = PlantsBool[indexPath.row] ? .checkmark : .none

        return cell
    }
    

   /* override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //建立一個選單作為動作清單
        let optionMenu = UIAlertController(title:nil,message:"What do you want to do?",preferredStyle:.actionSheet)
        
        if let popoverController = optionMenu.popoverPresentationController{
            if let cell = tableView.cellForRow(at: indexPath){
                popoverController.sourceView = cell
                popoverController.sourceRect = cell.bounds
            }
        }
        
        //取消
        let cancelAction = UIAlertAction(title:"Cancel",style:.cancel,handler:nil)
        optionMenu.addAction(cancelAction)
        
        //刪除
        let deleteAction = UIAlertAction(title:"Delete",style:.destructive,handler:{(action:UIAlertAction!) -> Void in
            self.PlantsName.remove(at: indexPath.row)
            self.PlantsLocation.remove(at: indexPath.row)
            self.PlantsType.remove(at: indexPath.row)
            self.PlantsBool.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with:.fade)
        })
        optionMenu.addAction(deleteAction)
        
        //確認
        let title1 = PlantsBool[indexPath.row] ? "Undo Check" : "Check"
        let booling = PlantsBool[indexPath.row] ? false : true
        
        let checkAction = UIAlertAction(title:title1,style:.default,handler: {(aciton:UIAlertAction!) -> Void in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = booling ? .checkmark : .none
            self.PlantsBool[indexPath.row] = booling
        })
        optionMenu.addAction(checkAction)
        
        //分享
        let shareAction = UIAlertAction(title:"Share",style:.default,handler:{(action:UIAlertAction!) -> Void in
            
            let sharetext = "去看看這植物吧🌳"
            
            let activityController : UIActivityViewController
            if let shareimage = UIImage(named: self.PlantsName[indexPath.row]){
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
        })
        optionMenu.addAction(shareAction)
        
        
        //取消選取列
        tableView.deselectRow(at: indexPath, animated: false)
        
        present(optionMenu,animated: true,completion: nil)
    }*/
    
    //向左滑動
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?{
        
        //刪除
        let deleteAction = UIContextualAction(style:.destructive,title: "Delete"){(action,sourceView,completionHandler) in
            
            self.PlantsName.remove(at: indexPath.row)
            self.PlantsLocation.remove(at: indexPath.row)
            self.PlantsType.remove(at: indexPath.row)
            self.PlantsBool.remove(at: indexPath.row)
            
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        deleteAction.backgroundColor = UIColor(red:231.0/255.0,green:76.0/255.0,blue:60.0/255.0,alpha:1.0)
        deleteAction.image = UIImage(named: "delete")
        
        //分享
        let shareAction = UIContextualAction(style:.normal,title:"Share"){(action,sourceView,completionHandler) in
            
            let sharetext = "去看看這植物吧🌳"
            
            let activityController : UIActivityViewController
            if let shareimage = UIImage(named: self.PlantsName[indexPath.row]){
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
        let title2 = PlantsBool[indexPath.row] ? "Undo Check" : "Check"
        let booling2 = PlantsBool[indexPath.row] ? false : true
        
        let checkAction2 = UIContextualAction(style:.normal,title:title2){(action,sourceView,completionHandler) in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = booling2 ? .checkmark : .none
            self.PlantsBool[indexPath.row] = booling2
        }
       // checkAction2.backgroundColor = UIColor(red:211.0/255.0,green:211.0/255.0,blue:211.0/255.0,alpha:1.0)
        let img = booling2 ? "tick" : "undo"
        checkAction2.image = UIImage(named: img)
        
        
        let Swipe = UISwipeActionsConfiguration(actions: [deleteAction,shareAction,checkAction2])
        
        return Swipe
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showplantsdetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destination = segue.destination as!PlantsDetailViewController
                destination.Plantsimgname = self.PlantsName[indexPath.row]
                destination.plantsname = self.PlantsName[indexPath.row]
                destination.plantslocation = self.PlantsLocation[indexPath.row]
                destination.plantstype = self.PlantsType[indexPath.row]
            }
        }
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
