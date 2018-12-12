//
//  MapViewController.swift
//  plants
//
//  Created by viplab on 2018/10/16.
//  Copyright © 2018年 viplab. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate {
    
    
    @IBOutlet var mapView: MKMapView!
    
    var plants = Plants()
    var plantslocation = Plantslocation()
    var number:Int = 0
    var takelon = [Double](repeating:0,count:20)
    var takelat = [Double](repeating:0,count:20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
    
        for index in 0...number-1 {
            let objectAnnotation = MKPointAnnotation()
        if plants.Pid == plantslocation.Pid {
            objectAnnotation.coordinate = CLLocation(latitude: takelat[index], longitude: takelon[index]).coordinate
        objectAnnotation.title = plants.Cname
        objectAnnotation.subtitle = plants.Sname
        mapView.addAnnotation(objectAnnotation)
        let region = MKCoordinateRegionMakeWithDistance(objectAnnotation.coordinate, 250, 250)
        mapView.setRegion(region, animated: false)
            }
       }
        
            
        mapView.showsCompass = true
        mapView.showsScale = true
        mapView.showsTraffic = true
    }
    
    /*func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "MyMarker"
        
        if annotation.isKind(of: MKUserLocation.self){
            return nil
        }
        
        var annotationView : MKMarkerAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
        
        if  annotationView == nil{
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }
        
       // annotationView?.glyphImage = UIImage(named: plants.Cname)
        annotationView?.markerTintColor = UIColor.orange
        
        return annotationView
    }*/
    


}
