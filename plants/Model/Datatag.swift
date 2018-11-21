//
//  Datatag.swift
//  plants
//
//  Created by viplab on 2018/11/7.
//  Copyright © 2018年 viplab. All rights reserved.
//

import Foundation

class Plantsdata{
    var Pid:Int32
    let twotofive:Int32
    let fivetoseven:Int32
    let eighttoten:Int32
    let eleventoone :Int32
    let white :Int32
    let red :Int32
    let orange:Int32
    let yellow :Int32
    let green :Int32
    let blue :Int32
    let purple :Int32
    let brown :Int32
    let other :Int32
    let regular :Int32
    let irregular :Int32
    let composite :Int32
    let three :Int32
    let four :Int32
    let five :Int32
    let six :Int32
    let seven :Int32
    let altermate :Int32
    let opposite :Int32
    let whorled :Int32
    let fasciculate :Int32
    let simpleleaf :Int32
    let compoudleaf :Int32
    let aclularleaf:Int32
    
    init(Pid:Int32 ,twotofive:Int32,fivetoseven:Int32,eighttoten:Int32,eleventoone :Int32,white :Int32,red :Int32,orange:Int32,yellow :Int32,green :Int32,blue :Int32,purple :Int32,brown :Int32,other :Int32,regular :Int32,irregular :Int32,composite :Int32,three :Int32,four :Int32,five :Int32,six :Int32,seven :Int32,altermate :Int32,opposite :Int32,whorled :Int32,fasciculate :Int32,simpleleaf :Int32,compoudleaf :Int32,aclularleaf:Int32){
        self.Pid = Pid
        self.twotofive = twotofive
        self.fivetoseven = fivetoseven
        self.eighttoten = eighttoten
        self.eleventoone = eleventoone
        self.white = white
        self.red = red
        self.orange = orange
        self.yellow = yellow
        self.green = green
        self.blue = blue
        self.purple = purple
        self.brown = brown
        self.other = other
        self.regular = regular
        self.irregular = irregular
        self.composite = composite
        self.three = three
        self.four = four
        self.five = five
        self.six = six
        self.seven = seven
        self.altermate = altermate
        self.opposite = opposite
        self.whorled = whorled
        self.fasciculate = fasciculate
        self.simpleleaf = simpleleaf
        self.compoudleaf = compoudleaf
        self.aclularleaf = aclularleaf
    }
    
    convenience init(){
        self.init(Pid:0 ,twotofive:0,fivetoseven:0,eighttoten:0,eleventoone :0,white :0,red :0,orange:0,yellow :0,green :0,blue :0,purple :0,brown :0,other :0,regular :0,irregular :0,composite :0,three :0,four :0,five :0,six :0,seven :0,altermate :0,opposite :0,whorled :0,fasciculate :0,simpleleaf :0,compoudleaf :0,aclularleaf:0)
    }
}
