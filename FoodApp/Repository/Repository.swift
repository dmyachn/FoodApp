//
//  Repository.swift
//  FoodApp
//
//  Created by dmitry on 03.09.2021.
//

import Foundation
import Alamofire

class Repository {
    static let shared = Repository()
    let parm : [String: Any] = ["" : []]
    
    func getCategory(_ onSuccess: @escaping([Category]) -> Void)  {
        var categoris = [Category]()
        AF.request("https://www.themealdb.com/api/json/v1/1/categories.php/",
                   method: .get,
                   parameters: parm,
                   encoding: URLEncoding.default)
            .response { response in
                debugPrint(response)
                self.getName(search: "kumpir"){_ in }
            }
    }
    
    func getName(search:String, _ onSuccess: @escaping([Category]) -> Void)  {
        var categoris = [Category]()
        AF.request("https://www.themealdb.com/api/json/v1/1/search.php?s=" + search,
                   method: .get,
                   parameters: parm,
                   encoding: URLEncoding.default)
            .response { response in
                debugPrint(response)
  }
    }
    
}
