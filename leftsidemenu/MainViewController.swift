//
//  MainViewController.swift
//  leftsidemenu
//
//  Created by Mohammed S A Kwaik on 10/17/17.
//  Copyright © 2017 Mohammed S A Kwaik. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let menuButton = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(menuBarButtonTapped))
        self.navigationItem.leftBarButtonItem = menuButton
        
        //Add observer for page1
        NotificationCenter.default.addObserver(self, selector: #selector(showPage1), name: Notification.Name(observers.showPage1.rawValue), object: nil)
        
        //Add observer for page2
        NotificationCenter.default.addObserver(self, selector: #selector(showPage2), name: Notification.Name(observers.showPage2.rawValue), object: nil)
        
        //Add observer for page3
        NotificationCenter.default.addObserver(self, selector: #selector(showPage3), name: Notification.Name(observers.showPage3.rawValue), object: nil)
    }
    
    @objc
    func menuBarButtonTapped(){
        NotificationCenter.default.post(name: Notification.Name("toggelLeftSideMenu"), object: nil)
    }
    
    @objc
    func showPage1() {
        performSegue(withIdentifier: segues.showPage1Segue.rawValue, sender: nil)
        NotificationCenter.default.post(name: Notification.Name(observers.toggelLeftSideMenu.rawValue), object: nil)
    }
    
    @objc
    func showPage2() {
        performSegue(withIdentifier: segues.showPage2Segue.rawValue, sender: nil)
        NotificationCenter.default.post(name: Notification.Name(observers.toggelLeftSideMenu.rawValue), object: nil)
    }
    
    @objc
    func showPage3() {
        performSegue(withIdentifier: segues.showPage3Segue.rawValue, sender: nil)
        NotificationCenter.default.post(name: Notification.Name(observers.toggelLeftSideMenu.rawValue), object: nil)
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


