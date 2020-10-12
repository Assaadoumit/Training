//
//  TableViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/22/20.
//

import UIKit

class TableViewController: UITableViewController {
    
    var namesArray = [StructCell]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "123")
        ApiCalls.fetchData { (fetchResult) in
        
            let movieResults: [[String: Any]] = fetchResult["movie_results"].arrayObject as! [[String: Any]]
            self.namesArray = movieResults.map { (result) -> StructCell in
                return StructCell.init(data: result)
            }
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.namesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
        cell.title?.text = self.namesArray[indexPath.row].title
        cell.subtitle?.text = self.namesArray[indexPath.row].subtitle
        
        return cell
    }
}
