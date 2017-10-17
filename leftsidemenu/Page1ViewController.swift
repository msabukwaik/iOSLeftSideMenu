//
//  Page1ViewController.swift
//  leftsidemenu
//
//  Created by Mohammed S A Kwaik on 10/17/17.
//  Copyright © 2017 Mohammed S A Kwaik. All rights reserved.
//

import UIKit

class Page1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Hide back button
        self.navigationItem.hidesBackButton = true
        
        // Do any additional setup after loading the view.
        let menuButton = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(menuBarButtonTapped))
        self.navigationItem.leftBarButtonItem = menuButton
        self.navigationItem.title = "Page 1"
    }
    
    @objc
    func menuBarButtonTapped(){
        NotificationCenter.default.post(name: Notification.Name("toggelLeftSideMenu"), object: nil)
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
