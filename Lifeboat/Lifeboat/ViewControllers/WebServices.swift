//
//  WebServices.swift
//  Lifeboat
//
//  Created by Kav Interactive on 08/10/19.
//  Copyright © 2019 Kav Interactive. All rights reserved.
//

import Foundation
import Alamofire




func webServicePostRequest(baseString: String, parameters: [String:Any], completionHandler: @escaping (JSON?, Error?) -> ()){

    let headers = [
        "Content-Type": "application/x-www-form-urlencoded"
    ]
    
    Alamofire.request(baseString , method: .post, parameters: parameters).responseJSON { response in
        switch response.result {
        case .success(let value):
            let json = JSON(value)
            completionHandler(json, nil)
        case .failure(let error):
            completionHandler(nil, error)
            
            
        }
    }
    
}
