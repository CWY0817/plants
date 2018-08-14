//
//  Plants.swift
//  plants
//
//  Created by viplab on 2018/8/14.
//  Copyright © 2018年 viplab. All rights reserved.
//

import Foundation

class Plants{
    var name: String
    var type: String
    var location: String
    var image: String
    var isee: Bool
    
    init(name: String,type: String,location: String,image:String,isee:Bool){
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isee = isee
    }
    
    convenience init(){
        self.init(name:"",type:"",location:"",image:"",isee:false)
    }
}
