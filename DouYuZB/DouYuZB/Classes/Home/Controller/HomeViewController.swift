//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by mac on 19/3/13.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置UI
        setupUI()
    }
    
    private func setupUI(){
        //设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        
        navigationItem.leftBarButtonItem = JUIBarButtonItem(imageName:"logo")
        
        let size = CGSize(width:40,height:40)
        let historyItem = JUIBarButtonItem(imageName: "image_my_history", hignImageName: "Image_my_history_click", size: size)
        
        let searchItem = JUIBarButtonItem(imageName: "btn_search", hignImageName: "btn_search_clicked", size: size)
        
        let qrcodeItem = JUIBarButtonItem(imageName: "Image_scan", hignImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
    }
}
