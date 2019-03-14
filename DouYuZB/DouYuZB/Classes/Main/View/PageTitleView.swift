//
//  PageTitleView.swift
//  DouYuZB
//
//  Created by mac on 19/3/14.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

private let kScrollLineH:CGFloat = 2
class PageTitleView: UIView {

    private var titles: [String]
    
    private lazy var titleLabels: [UILabel] = [UILabel]()
    
    private lazy var scrollView:UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.isPagingEnabled = false
        // 不超过父控件边界
        scrollView.bounces = false
        return scrollView
    }()
    
    private lazy var scrollLine:UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    init(frame:CGRect, titles:[String]){
        self.titles = titles
        super.init(frame:frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Mark:- 设置UI界面
    private func setupUI(){

        // 添加UIScrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        // 添加标签
        setupTitleLabels()
        
        //设置底线和滚动的滑块
        setupBottomLineAndScrollLine()
    }
    
    // 设置标签
    private func setupTitleLabels(){
        
        let labelW:CGFloat = frame.width / CGFloat(titles.count)
        let labelH:CGFloat = frame.height - kScrollLineH
        let labelY:CGFloat = 0
        
        for(index , title) in titles.enumerated(){
            let label = UILabel()
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textAlignment = .center
            label.textColor = UIColor.darkGray
            
            let labelX:CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x:labelX, y:labelY , width:labelW, height:labelH)
            
            scrollView.addSubview(label)
            titleLabels.append(label)
            
        }
    }
    
    //设置底线和滚动的滑块
    private func setupBottomLineAndScrollLine(){
        // 添加底线
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x:0 , y:frame.height - lineH,width:frame.width , height:lineH)
        addSubview(bottomLine)
        
        //设置滑块
        guard let firstLabel = titleLabels.first else {return}
        firstLabel.textColor = UIColor.orange
        scrollLine.frame = CGRect(x:firstLabel.frame.origin.x , y:frame.height - kScrollLineH , width:firstLabel.frame.width , height:kScrollLineH)
        scrollView.addSubview(scrollLine)
    }

}
