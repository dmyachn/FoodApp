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
        AF.request("https://www.themealdb.com/api/json/v1/1/categories.php/").validate().responseJSON { response in
            switch response.result {
            case .success:
                if let jsonData = response.data {
                    let jsonDecoder = JSONDecoder()
                    do {
                        let decode = try jsonDecoder.decode([Category].self, from: jsonData)
//                      onSuccess(decode)
                        debugPrint(decode)
                    }catch let error{
                        debugPrint(error)
                    }
                }
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
    
    func getMeal(search:String, _ onSuccess: @escaping([Meal]) -> Void)  {
        AF.request("https://www.themealdb.com/api/json/v1/1/search.php?s=" + search)
            .response { response in
                switch response.result {
                case .success:
                    if let jsonData = response.data {
                        let jsonDecoder = JSONDecoder()
                        do {
                            let decode = try jsonDecoder.decode([Meal].self, from: jsonData)
//                          onSuccess(decode)
                            debugPrint(decode)
                        }catch let error{
                            debugPrint(error)
                        }
                    }
                case .failure(let error):
                    debugPrint(error)
                }
            }
    }
}
