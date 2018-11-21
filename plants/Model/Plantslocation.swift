//
//  Plantslocation.swift
//  plants
//
//  Created by viplab on 2018/11/7.
//  Copyright © 2018年 viplab. All rights reserved.
//

import Foundation

class Plantslocation{
    var Pid:Int32
    var Longitude: Double
    var Latitude: Double
    
    init(Pid:Int32 ,Latitude: Double,Longitude: Double){
        self.Pid = Pid
        self.Longitude = Longitude
        self.Latitude = Latitude
    }
    
    convenience init(){
        self.init(Pid:0 ,Latitude:0,Longitude:0)
    }
}
