//
//  JUIBarButtonItem.swift
//  DouYuZB
//
//  Created by mac on 19/3/13.
//  Copyright © 2019年 mac. All rights reserved.
//

import Foundation
import UIKit
class JUIBarButtonItem : UIBarButtonItem{
    class func createItem(imageName:String,hignImageName:String = "", size:CGSize? = nil) -> JUIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named:imageName), for: .normal)
        if hignImageName != ""{
            btn.setImage(UIImage(named:hignImageName), for: .highlighted)
        }
        if size == nil{
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin:CGPoint(x: 0,y :0),size:size!)
        }

        return JUIBarButtonItem(customView:btn)
    }
    
    // 便利构造函数
    convenience init(imageName:String,hignImageName:String = "", size:CGSize? = nil){
        let btn = UIButton()
        
        btn.setImage(UIImage(named:imageName), for: .normal)
        if hignImageName != ""{
            btn.setImage(UIImage(named:hignImageName), for: .highlighted)
        }
        if size == nil{
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin:CGPoint(x: 0,y :0),size:size!)
        }
        self.init(customView:btn)
    }
}
