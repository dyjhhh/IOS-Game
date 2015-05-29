//
//  ViewController.swift
//  Game
//
//  Created by Yujia Dong on 5/28/15.
//  Copyright (c) 2015 Vail Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    //how many section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    //how many rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    //content of each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = "haha"
        return cell
    }
    

 
    @IBOutlet weak var email: UITextField!
 
    @IBOutlet weak var password: UITextField!
   
    @IBAction func login(sender: UIButton) {
        self.email.resignFirstResponder()
        self.password.resignFirstResponder()
        
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

