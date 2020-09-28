//
//  DynamicCellViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/24/20.
//

import UIKit
import SDWebImage


class DynamicCellViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    var array_CellModel = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        
        self.fillArray()
    }
    
//    let titleArray : [String] = [
//        "hello there",
//        "hi there",
//        "qwertyAzerty Asdrikmafafikf",
//        "klnagunknao aubgoangnaf",
//        "testing the dynamic height cell view controller"
//    ]
//
//    let textArray : [String] = [
//        "qwerty azerty",
//        "jbnjgknoaung;kmajlbja;l oiangknagin ljouagnla dgaindg",
//        "jangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnaga",
//        "jangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnaga",
//        "Hi"
//    ]
//
    func fillArray() {
        self.array_CellModel.append(CellData.init(title: "hello there", text: "qwerty azerty"))
        self.array_CellModel.append(CellData.init(title: "hi there", text: "jbnjgknoaung;kmajlbja;l oiangknagin ljouagnla dgaindg"))
        self.array_CellModel.append(CellData.init(title: "qwertyAzerty Asdrikmafafikf", text: "jangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnaga"))
        self.array_CellModel.append(CellData.init(title: "klnagunknao aubgoangnaf", text: "jangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagajangoagnagavjangoagnagajangoagnagajangoagnagajangoagnagajangoagnagaj"))
        self.array_CellModel.append(CellData.init(title: "testing the dynamic height cell view controller", text: "Hi"))
        self.tableView.reloadData()
    }
    
}



extension DynamicCellViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return cellView.count
        return self.array_CellModel.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DynamicCellTableViewCell", for: indexPath)
        (cell.viewWithTag(1) as? UILabel)?.text = self.array_CellModel[indexPath.row].title
        (cell.viewWithTag(2) as? UILabel)?.text = self.array_CellModel[indexPath.row].text
        let url = URL.init(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png")
        let placeholderImage = UIImage(named: "noImage")
        (cell.viewWithTag(3) as? UIImageView)!.sd_setImage(with: url, placeholderImage: placeholderImage);
        
        return cell
    }
    
    
    
    
    
}




