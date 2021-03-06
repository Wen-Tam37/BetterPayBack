//
//  TabBarController.swift
//  BetterPayBack
//
//  Created by cmStudent on 2020/01/28.
//  Copyright © 2020 19cm0140. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    //plusボタン
    let button = UIButton.init(type: .custom)
    //popupview
    var popupViewController = PopUpViewController()
    
    
    
    //test
    var item1 = UINavigationController()
    var item2 = UINavigationController()
    var item3 = UINavigationController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ipad (9.7) 768 1024
        //MARK:sizeChange
        let width = view.frame.width
        //let height = view.frame.height
        if width > 414 {
            self.tabBar.frame = CGRect(x: 0, y: 924, width: 768, height: 100)
            self.tabBar.tintColor = UIColor.black
            self.tabBar.backgroundImage = UIImage(named: "homeIndicator3")
            //self.tabBar.backgroundImage = UIImage()
            self.tabBar.shadowImage = UIImage()
            
            self.tabBar.barTintColor = .clear
            
            //self.tabBar.items![0].image = UIImage(named: "home2")
            //self.tabBar.items![1].image = UIImage(named: "user")
            
            //self.tabBarItem.imageInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
            
            //cover用View
            let lineView = UIView()
            lineView.frame = CGRect(x: 0, y: view.frame.height * 0.878, width: view.frame.width, height: 2)
            lineView.backgroundColor = UIColor(red: 240/255, green: 135/255, blue: 98/255, alpha: 1)
            //lineView.backgroundColor = UIColor.red
            self.view.addSubview(lineView)
            //self.view.sendSubviewToBack(lineView)
            
            
        }else{
            self.tabBar.tintColor = UIColor.black
            self.tabBar.backgroundImage = UIImage(named: "homeIndicator2")
            //self.tabBar.backgroundImage = UIImage()
            self.tabBar.shadowImage = UIImage()
            
            self.tabBar.barTintColor = .clear
            
            //cover用View
            let lineView = UIView()
            lineView.frame = CGRect(x: 0, y: view.frame.height * 0.853, width: view.frame.width, height: 2)
            lineView.backgroundColor = UIColor(red: 240/255, green: 135/255, blue: 98/255, alpha: 1)
            //lineView.backgroundColor = UIColor.red
            self.view.addSubview(lineView)
            //self.view.sendSubviewToBack(lineView)
        }
        
        
//        self.tabBar.tintColor = UIColor.black
//        self.tabBar.backgroundImage = UIImage(named: "homeIndicator2")
//        //self.tabBar.backgroundImage = UIImage()
//        self.tabBar.shadowImage = UIImage()
//
//        self.tabBar.barTintColor = .clear
        
        
        
//        //cover用View
//        let lineView = UIView()
//        lineView.frame = CGRect(x: 0, y: view.frame.height * 0.853, width: view.frame.width, height: 2)
//        lineView.backgroundColor = UIColor(red: 240/255, green: 135/255, blue: 98/255, alpha: 1)
//        //lineView.backgroundColor = UIColor.red
//        self.view.addSubview(lineView)
//        //self.view.sendSubviewToBack(lineView)
        
        
        //plusボタン設定
        button.setImage(UIImage(named: "plus_main"), for: UIControl.State.normal)
        button.frame = CGRect.init(x: self.tabBar.center.x - 33, y: self.view.frame.height * 0.83, width: 70, height: 70)
        button.addTarget(self, action: #selector(self.popup(_:)), for: .touchUpInside)
        self.view.insertSubview(button, aboveSubview: self.tabBar)
        self.view.bringSubviewToFront(button)
        
        //set2()
        print("")
        
        
        
//        var insets = UIEdgeInsets()
//        insets.top = 5
//        insets.bottom = 10
//        self.tabBarItem.imageInsets = insets
        //self.navigationController?.tabBarItem.imageInsets = insets
 

        
        
    }
    
    
    func set2(){
        
        let storyboard: UIStoryboard = self.storyboard!
        
        let profileViewController = storyboard.instantiateViewController(withIdentifier: "profile") as! ProfileViewController
        
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "home") as! ViewController
        
        let countDownViewController = storyboard.instantiateViewController(withIdentifier: "countDown") as! CountDownViewController
        
        let vc1 = homeViewController
        //let vc1 = ViewController()
        //vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        vc1.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home2"), tag: 0)
        let vc2 = profileViewController
        vc2.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "user"), tag: 1)
        let vc3 = countDownViewController
        vc3.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "005-clock"), tag: 2)

        let vcs: [UIViewController] = [vc1, vc2]
        self.setViewControllers(vcs, animated: true)
        
    }
    
    // ボタンが押されたときにaddSubviewする
    @objc func popup(_ sender: Any) {
        view.addSubview(popupViewController.view)
        
    }
    
    
    
}

//extension UITabBar {
//    override open func sizeThatFits(_ size: CGSize) -> CGSize {
//        var size = super.sizeThatFits(size)
//        size.height = 100
//        return size
//    }
//}
