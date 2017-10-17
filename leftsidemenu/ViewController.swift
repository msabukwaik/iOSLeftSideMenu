//
//  ViewController.swift
//  leftsidemenu
//
//  Created by Mohammed S A Kwaik on 10/17/17.
//  Copyright © 2017 Mohammed S A Kwaik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftMenuConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create toggelgeMenuObserver
        NotificationCenter.default.addObserver(self, selector: #selector(toggelLeftSideMenu), name: Notification.Name("toggelLeftSideMenu") , object: nil)
        print("Debug : view did load is called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc
    func toggelLeftSideMenu() {
        print("debug: toggelLeftSideMenu has been called")
        if (LeftMenuConstraint.constant == -200)
        {
            LeftMenuConstraint.constant = 0
        }else{
            LeftMenuConstraint.constant = -200
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        
    }


}

