//
//  Plants.swift
//  plants
//
//  Created by viplab on 2018/8/14.
//  Copyright © 2018年 viplab. All rights reserved.
//

import Foundation

class Plants{
    var Pid:Int32
    var Cname: String
    var Sname: String
    var Othername: String
    var Familia: String
    var Originplace: String
    var Distribution: String
    var Application: String
    var Leaf: String
    var Stem: String
    var Flower: String
    var Fruit: String
    var Startmonth : Int32
    var Endmonth: Int32
    var Isee: Bool
    
    init(Pid:Int32 ,Cname: String,Sname: String,Othername: String,Familia: String,Originplace: String,Distribution: String,Application: String,Leaf: String,Stem: String,Flower: String,Fruit: String,Startmonth : Int32,Endmonth: Int32,Isee:Bool){
        self.Pid = Pid
        self.Cname = Cname
        self.Sname = Sname
        self.Othername = Othername
        self.Familia = Familia
        self.Originplace = Originplace
        self.Distribution = Distribution
        self.Application = Application
        self.Leaf = Leaf
        self.Stem = Stem
        self.Flower = Flower
        self.Fruit = Fruit
        self.Startmonth = Startmonth
        self.Endmonth = Endmonth
        self.Isee = Isee
    }
    
    convenience init(){
        self.init(Pid:0 ,Cname:"",Sname: "",Othername: "",Familia: "",Originplace:"",Distribution: "",Application:"",Leaf:"",Stem:"",Flower:"",Fruit:"",Startmonth :0,Endmonth:0,Isee:false)
    }
}
