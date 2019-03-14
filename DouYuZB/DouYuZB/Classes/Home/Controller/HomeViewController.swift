//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by mac on 19/3/13.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

private let kTitleViewH:CGFloat = 40
class HomeViewController: UIViewController {

    private lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x:0,y:kStatusBarH + kNavigationBarH ,width:kScreenW, height:kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"];
        let titleView = PageTitleView(frame:titleFrame,titles:titles)
      //  titleView.backgroundColor = UIColor.purple
        return titleView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //设置UI
        setupUI()
     
    }
    
    private func setupUI(){
        //简单点说就是automaticallyAdjustsScrollViewInsets根据按所在界面的status bar，navigationbar，与tabbar的高度，自动调整scrollview的 inset,设置为no，不让viewController调整，我们自己修改布局即可~
        automaticallyAdjustsScrollViewInsets = false
        //设置导航栏
        setupNavigationBar()
        
        // 添加titleView
        view.addSubview(pageTitleView)
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
