//
//  MainViewController.swift
//  DouYuZB
//
//  Created by mac on 19/3/13.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 添加子控制器
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")

    }
    
    private func addChildVc(storyName : String){
        //1 通过Storyboard获取控制器
        let childVc = UIStoryboard(name:storyName,bundle:nil).instantiateInitialViewController()!
        //2 将ChildVc作为子控制器
        addChildViewController(childVc)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
