//
//  TableViewController.swift
//  Training
//
//  Created by Assaad Doumit on 10/5/20.
//

import UIKit

class StaticTableViewController: UITableViewController {
    
    @IBOutlet weak var Label_name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    enum Sections : Any {
        case oneSection
        case twoSections
        case threeSections
    }
    
    
    
    // MARK: - Table view data source
    //
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 1
    //    }
    //////
    //    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        // #warning Incomplete implementation, return the number of rows
    //
    //        return 6
    //    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//        switch Sections.self = state {
//
//            case .oneSection:
//            return cell1
//            case .twoSections:
//            return cell4
//            case .threeSections:
//            return cell3
//            }
////
//
//        //        return cell1!
//    }
//
    @IBAction func switchCase(_ sender : UISwitch){
        if(sender.isOn){
            print("on")
            UIApplication.shared.registerForRemoteNotifications()
        }
        else{
            print("Off")
            UIApplication.shared.unregisterForRemoteNotifications()
        }
    }
    
    @IBAction func changeWithEnum(_ sender:Any){
        
        
    }
    @IBAction func changeCase1(_ sender:Any){
        
        
    }
    
    
    
}
