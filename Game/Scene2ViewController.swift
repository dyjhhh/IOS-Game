//
//  ViewController.swift
//  Game
//
//  Created by Yujia Dong on 5/28/15.
//  Copyright (c) 2015 Vail Inc. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITableViewDataSource{
    
    let number = [
    ("1","one"),
        ("2","two"),
        ("3","three")
    
    
    ]
    
    
    
    let fruit = [
        ("Apple","🍎"),
        ("Orange","🍊"),
        ("Lemon","🍋"),
        ("Banana","🍌"),
        ("Grapes","🍇"),
        ("Cherries","🍒")
        
        
    ]
    
    //how many section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    //how many rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
        return number.count
        } else{
        
        return fruit.count
        }
    }
    //content of each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0{
            
            var(numberDigit, numberText) = number[indexPath.row]
            cell.textLabel?.text = numberDigit
        }else{
        
            var(fruitName, fruitSymbol) = fruit[indexPath.row]
            cell.textLabel?.text = fruitSymbol
        }
      
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
        return "numbers"
        }else{
        return "fruits"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



















