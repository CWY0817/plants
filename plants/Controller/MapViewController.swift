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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(plants.map,completionHandler: {
            placemarks,error in
            if let error = error{
                print(error)
                return
            }
            
            if let placemarks = placemarks{
                let placemark = placemarks[0]
                
                let annotation = MKPointAnnotation()
                annotation.title = self.plants.name
                annotation.subtitle = self.plants.type
                
                if let location = placemark.location{
                    annotation.coordinate = location.coordinate
                    
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation,animated: true)
                }
            }
            
        })
        
        // Do any additional setup after loading the view.
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
        
        annotationView?.glyphImage = UIImage(named: plants.name)
        annotationView?.markerTintColor = UIColor.orange
        
        return annotationView
    }*/
    


}
