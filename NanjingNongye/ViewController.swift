//
//  ViewController.swift
//  NanjingNongye
//
//  Created by LeouW on 15/7/29.
//  Copyright (c) 2015年 CC. All rights reserved.
//

import UIKit

var animateImg:UIImageView!
var animateLoading:UIActivityIndicatorView!

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        animateImg = UIImageView(frame: CGRectMake(self.view.bounds.size.width, self.view.bounds.size.height/2, 20, 5)) as UIImageView
        animateImg.backgroundColor = UIColor.redColor()
        self.view.addSubview(animateImg)
        
        //用户名
        var userNameText:UITextField = UITextField(frame: CGRectMake(20, 100, self.view.bounds.size.width-20*2, 40))
        userNameText.placeholder = "用户名/手机号/学号"
        userNameText.textAlignment = NSTextAlignment.Center
        userNameText.backgroundColor = UIColor.brownColor()
        userNameText.layer.cornerRadius = 5.0
        userNameText.textColor = UIColor.whiteColor()
        self.view.addSubview(userNameText)
        
        var passwordText:UITextField = UITextField(frame: CGRectMake(20, 150, self.view.bounds.size.width-20*2, 40))
        passwordText.placeholder = "密码"
        passwordText.textAlignment = NSTextAlignment.Center
        passwordText.backgroundColor = UIColor.brownColor()
        passwordText.layer.cornerRadius = 5.0
        passwordText.textColor = UIColor.whiteColor()
        self.view.addSubview(passwordText)
        
        var loginButton:UIButton = UIButton.buttonWithType(UIButtonType.ContactAdd) as! UIButton;
        loginButton.frame=CGRectMake(20, 200, self.view.bounds.size.width-20*2, 40);
        loginButton.tintColor = UIColor.whiteColor()
//        button.setTitle("按钮", forState:UIControlState.Normal)
        loginButton.layer.cornerRadius = 5
        loginButton.backgroundColor = UIColor.grayColor()
        loginButton.addTarget(self, action:"login:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(loginButton)
        
        animateLoading = UIActivityIndicatorView(frame: CGRectMake(self.view.bounds.size.width/2-20, self.view.bounds.size.height/2, 40, 40))
        animateLoading.hidesWhenStopped = true
        animateLoading.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        self.view.addSubview(animateLoading)
        animateLoading.startAnimating()
    }
    
    func login(sender: UIButton) {
        
        let mainTabBarVC:MainTabBarController = MainTabBarController()
        
        UIView.animateWithDuration(1.4, animations: {
        
//            self.view.alpha = 0.6;
            animateImg.frame = CGRectMake(-20, self.view.bounds.size.height/2, 20, 5)
            
            animateLoading.frame = CGRectMake(self.view.bounds.size.width/2-20, -50, 40, 40)
            
            }, completion: {
                
                (Bool completion) in
                if completion {
                    
                    UIApplication.sharedApplication().keyWindow?.rootViewController = mainTabBarVC
                }else {
                    
                }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

