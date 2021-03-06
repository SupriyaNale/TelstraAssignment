//
//  DataModel.swift
//  Assignment
//
//  Created by Yash on 11/05/18.
//  Copyright © 2018 infosys. All rights reserved.
//

import Foundation
/* Class is used to store information for all the Data
 */

class DataModel
{
    //MARK:- Properties
    
    var title : String = ""
    var description : String = ""
    var imageURL : String = ""
    
    //MARK:- Initializers
    
    convenience init(json : [String: AnyObject]) throws {
        self.init()
        
        if let title = json["title"] as? String {
            self.title  = title
        }
        
        if let description = json["description"] as? String {
            self.description  = description
        }
        
        if let imageURL = json["imageHref"] as? String {
            self.imageURL  = imageURL
        }
    }
    
}


//Error Type
enum DataModelError: Error {
    case dataIDEmpty
}
