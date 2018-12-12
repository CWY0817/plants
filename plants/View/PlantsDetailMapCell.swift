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
    
    func configure(plantsPid:Int32,plantslocationPid:Int32,plantsCname:String,plantsSname:String,latitude:Double,longitude:Double){
        let objectAnnotation = MKPointAnnotation()
        if plantsPid == plantslocationPid{
            objectAnnotation.coordinate = CLLocation(latitude: latitude, longitude: longitude).coordinate
            objectAnnotation.title = plantsCname
            mapview.addAnnotation(objectAnnotation)
            let region = MKCoordinateRegionMakeWithDistance(objectAnnotation.coordinate, 250, 250)
            mapview.setRegion(region, animated: false)
        }
        
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
