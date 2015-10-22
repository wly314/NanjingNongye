//
//  FirstViewController.swift
//  NanjingNongye
//
//  Created by LeouW on 15/7/29.
//  Copyright (c) 2015年 CC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tabBarItem = UITabBarItem(title: "First", image: UIImage(named: "tab_zhidu"), selectedImage: UIImage(named: "tab_zhidu"))
        self.tabBarController?.tabBar.tintColor = UIColor.grayColor()
        
        self.navigationItem.title = "第一页"
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        let rightBtn:UIButton = UIButton.init(type: UIButtonType.Custom)
        rightBtn.frame = CGRectMake(0, 0, 40, 40)
        self.navigationItem.rightBarButtonItem = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
