//
//  PlantsDetailMapCell.swift
//  plants
//
//  Created by viplab on 2018/10/16.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit
import MapKit

class PlantsDetailMapCell: UITableViewCell {
    
    
    @IBOutlet var mapview : MKMapView!
    
    func configure(location:String){
        //取得位置
        let geoCoder = CLGeocoder()
        
        print(location)
        geoCoder.geocodeAddressString(location,completionHandler: { placemarks, error in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            if let placemarks = placemarks{
                //取得第一個標記
                let placemark = placemarks[0]
                //加上標記
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location{
                    //顯示標記
                    annotation.coordinate = location.coordinate
                    self.mapview.addAnnotation(annotation)
                    
                    //設定縮放程度
                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate,250,250)
                    self.mapview.setRegion(region, animated: false)
                }
            }
        })
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
