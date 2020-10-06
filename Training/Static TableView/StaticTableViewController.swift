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
    
    enum State {
      case oneSection
      case twoSections
      case threeSections
    }

    
    
    // MARK: - Table view data source
//
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
////
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1")
//        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2")
//        let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3")
//        let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell4")
//        let cell5 = tableView.dequeueReusableCell(withIdentifier: "cell5")
//        let cell6 = tableView.dequeueReusableCell(withIdentifier: "cell16")

        
        
        return cell1!
    }

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
        var sectionSelected : State = .oneSection
        
        switch sectionSelected{
        
        case .oneSection:
            Label_name.text = "Alexy"
        case .twoSections:
            Label_name.text = "Assaad"
        case .threeSections:
            Label_name.text = "Johnny"
        }
        
    }
    @IBAction func changeCase1(_ sender:Any){
        
        
    }

    
    
}
