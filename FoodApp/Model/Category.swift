//
//  Category.swift
//  FoodApp
//
//  Created by dmitry on 03.09.2021.
//

import Foundation
import SwiftUI

struct Category: Codable{
    
    var idCategory: Int
    var strCategory: String
    var strCategoryThumb: String
    
    enum CodingKeys: String, CodingKey {
           case idCategory
           case strCategory
           case strCategoryThumb
       }
    
//      init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        idCategory = try container.decode(Int.self, forKey: .idCategory)
//        strCategory = try container.decode(String.self, forKey: .strCategory)
//        strCategoryThumb = try container.decode(String.self, forKey: .strCategoryThumb)
//      }
}

struct  CategoryListResponse: Decodable {
    enum CodingKeys: String, CodingKey {
        case categories
    }
    let categories: [Category]
}

extension String {
    func loadImage() -> UIImage {
        do{
            
            guard let url = URL(string: self)
            else {
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
            
        } catch{
            
        }
        
        return UIImage()
    }
}
