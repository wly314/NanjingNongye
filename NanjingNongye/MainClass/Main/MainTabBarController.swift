//
//  MainTabBarController.swift
//  NanjingNongye
//
//  Created by LeouW on 15/7/29.
//  Copyright (c) 2015年 CC. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var viewCon:FirstViewController!
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        var storyBoards:UIStoryboard = UIStoryboard(name: "Main", bundle: nil) as UIStoryboard
        if (screenHeight <= 480.0) {
            
            viewCon = storyBoards.instantiateViewControllerWithIdentifier("First3.5") as! FirstViewController
        }else if (screenHeight <= 568.0) {
            
            viewCon = storyBoards.instantiateViewControllerWithIdentifier("First4.0") as! FirstViewController
        }else if (screenHeight <= 667.0) {
            
            viewCon = storyBoards.instantiateViewControllerWithIdentifier("First4.7") as! FirstViewController
        }else if (screenHeight <= 736.0) {
            
            viewCon = storyBoards.instantiateViewControllerWithIdentifier("First5.5") as! FirstViewController
        }
        
        var naviCon:MainNavigationController = MainNavigationController(rootViewController:viewCon)
        
        self.viewControllers = [naviCon, naviCon]
        
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
