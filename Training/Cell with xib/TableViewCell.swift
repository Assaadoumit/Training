//
//  TableViewCell.swift
//  Training
//
//  Created by Assaad Doumit on 9/22/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // outlets
//
//    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        profileImage.layer.cornerRadius = profileImage.frame.height / 2
//        profileImage.clipsToBounds = true
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
