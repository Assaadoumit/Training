//
//  ViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/20/20.
//

import UIKit
import MyLibrary



class FirstScrennTableView: UITableViewController {
    
    let cells = ["Dynamic Cell", "cells Array", "Phone Auth with firebase", "cell in tableview wtih api", "local notification", "Static TableView","StackView", "Delegates", "In app notification"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        // using my library
        
        let randomString = randomGenerator.string()
        let randomInt = randomGenerator.number()
        print(randomInt)
        print(randomString)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        cell.textLabel?.text = cells[indexPath.row]
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            let vc = self.storyboard?.instantiateViewController(identifier: "DynamicCell") as! DynamicCellViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        //CellWithxib
        
        if indexPath.row == 1 {
            let vc = self.storyboard?.instantiateViewController(identifier: "CellInArrayTableViewController") as! CellInArrayTableViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        //CellInTableView
        if indexPath.row == 2 {
            let vc = self.storyboard?.instantiateViewController(identifier: "FirebaseAuthenticationViewController") as! FirebaseAuthenticationViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        if indexPath.row == 3 {
            let vc = self.storyboard?.instantiateViewController(identifier: "CellInTableView") as! TableViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        //LocalNotificationViewController
        if indexPath.row == 4 {
            let vc = self.storyboard?.instantiateViewController(identifier: "LocalNotificationViewController") as! LocalNotificationViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        if indexPath.row == 5 {
            let vc = self.storyboard?.instantiateViewController(identifier: "StaticTableViewController") as! StaticTableViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        //Stackview
        if indexPath.row == 6 {
            let vc = self.storyboard?.instantiateViewController(identifier: "Stackview") as! StackviewViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        
        if indexPath.row == 7 {
            let vc = self.storyboard?.instantiateViewController(identifier: "DelegateViewController") as! DelegateViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        if indexPath.row == 8 {
            let vc = self.storyboard?.instantiateViewController(identifier: "InAppNotificationViewController") as! InAppNotificationViewController
            self.navigationController!.pushViewController(vc, animated: true);
        }
        
    }
    
}

