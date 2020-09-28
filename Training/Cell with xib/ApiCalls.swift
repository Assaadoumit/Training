//
//  ApiCalls.swift
//  Training
//
//  Created by Assaad Doumit on 9/23/20.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiCalls: NSObject {
    
    
    final class func fetchData(_ successCallback: ((_ fetchResult:JSON) -> ())? = nil) {
        
        let apiUrl = URL(string : "https://movies-tvshows-data-imdb.p.rapidapi.com/?page=1&type=get-trending-movies")
        
        let headers : HTTPHeaders = [
            "x-rapidapi-host": "movies-tvshows-data-imdb.p.rapidapi.com",
            "x-rapidapi-key": "277fe6bf9dmsh04d12725155e831p10546fjsnfdf85fdaf29e"
        ]
        
        AF.request(apiUrl!, method: .get, encoding: JSONEncoding.default, headers: headers)
            .responseJSON { response in
                let json: JSON? = try? JSON(data: response.data!)
                successCallback!(json ?? JSON())
            }
    }
}


