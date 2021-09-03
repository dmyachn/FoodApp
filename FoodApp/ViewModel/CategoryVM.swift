//
//  CategoryVM.swift
//  FoodApp
//
//  Created by dmitry on 03.09.2021.
//

import Foundation
class CategoryVM : ObservableObject {
    @Published var categoryList: [Category] = []
    
//    func getCategoris() {
//        Repository.shared.getCategoris { categoris in
//            self.categoryList = categoris
//        }
//    }
    
}
