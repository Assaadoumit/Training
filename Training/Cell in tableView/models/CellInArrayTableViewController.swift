//
//  CellInArrayTableViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/22/20.
//

import UIKit
import Alamofire
import SwiftyJSON


class CellInArrayTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
//        tryThis()
    }
    
    var nameArray = CellStruct.importName()
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nameArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as? CellInarrayTableViewCell
        cell?.importData(nameArray[indexPath.row])
        return cell!
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
//    func tryThis(){
//        let apiKey = "277fe6bf9dmsh04d12725155e831p10546fjsnfdf85fdaf29e"
//        let apiUrl = URL(string : "https://movies-tvshows-data-imdb.p.rapidapi.com/?page=1&type=get-trending-movies")
//
//        let headers : HTTPHeaders = [
//            "x-rapidapi-host": "movies-tvshows-data-imdb.p.rapidapi.com",
//            "x-rapidapi-key": "277fe6bf9dmsh04d12725155e831p10546fjsnfdf85fdaf29e"
//        ]
//
//            //url, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON
//            AF.request(apiUrl!, method: .get, encoding: JSONEncoding.default, headers: headers)
//                        .responseJSON { response in
//
//                            print(response)
//                            var titleArray = [String]()
//                            var yearArray = [String]()
//                            let json = try? JSON(data: response.data!)
//                            for i in 0...19{
//                                let title = json!["movie_results"][i]["title"].string
//                                let year = json!["movie_results"][i]["year"].string
//                                titleArray.append(title!)
//                                yearArray.append(year!)
//                                StructCell.init(titles: titleArray, subtitle: yearArray)
//                            }
//                        }
//                }
}



