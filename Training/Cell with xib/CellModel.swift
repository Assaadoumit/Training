//
//  CellModel.swift
//  Training
//
//  Created by Assaad Doumit on 9/22/20.
//

import Foundation
import Alamofire
import SwiftyJSON


struct StructCell {
    
    var title = ""
    var subtitle = ""
    
    init(data:[String:Any]) {
        self.title = data["title"] as? String ?? ""
        self.subtitle = data["year"] as? String ?? ""
    }
}



