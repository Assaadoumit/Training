//
//  CellInarrayTableViewCell.swift
//  Training
//
//  Created by Assaad Doumit on 9/22/20.
//

import UIKit

class CellInarrayTableViewCell: UITableViewCell {
    @IBOutlet private var nameLabel: UILabel!
   

    func importData(_ names: CellStruct) {
        nameLabel.text = names.name
    }
}
