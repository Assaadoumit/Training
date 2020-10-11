//
//  ViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/20/20.
//

import UIKit
import MyLibrary



class FirstScrennTableView: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
       
        let randomString = randomGenerator.string()
        let randomInt = randomGenerator.number()
        print(randomInt)
        print(randomString)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        return cell
        
    }
    
}

