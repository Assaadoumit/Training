//
//  ViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/20/20.
//

import UIKit

class FirstScrennTableView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        return cell
        
    }
    
}

