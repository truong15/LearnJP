//
//  HomeVC.swift
//  LearnJP
//
//  Created by Truong15 on 7/13/15.
//  Copyright (c) 2015 Truong15. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,SlideNavigationControllerDelegate {

    @IBOutlet var menuButton: UIButton!
    
    //MARK: - Life circle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupData()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI() {
        self.menuButton.addTarget(SlideNavigationController.sharedInstance(), action:Selector("toggleLeftMenu"), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func setupData() {
        
    }

    //MARK: - SlideNavigationControllerDelegate
    func slideNavigationControllerShouldDisplayLeftMenu() -> Bool {
        return true
    }
}
