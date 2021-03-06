//
//  MenuVC.swift
//  LearnJP
//
//  Created by Truong15 on 7/13/15.
//  Copyright (c) 2015 Truong15. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var menuTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI() {
        //Delete all unnecessary separator line
        self.menuTable.tableFooterView = UIView(frame: CGRectZero)
        print("\(__FUNCTION__)  \(NSStringFromCGRect(CGRectZero))")
    }
    
    func setupData() {
        
    }
    
    //MARK: - UITableViewDelegate + Datasource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cellIndentifier")
        cell.textLabel?.text = "Menu"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
}
