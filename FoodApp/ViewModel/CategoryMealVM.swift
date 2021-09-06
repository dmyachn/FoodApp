//
//  CategoryMealVM.swift
//  FoodApp
//
//  Created by dmitry on 03.09.2021.
//

import Foundation
class CategoryMealVM : ObservableObject {
    @Published var categoryList: [Category] = []
    @Published var mealList: [Meal] = []
    
    func getCategory() {
        Repository.shared.getCategory { categories in
            self.categoryList = categories
        }
    }
    
    func getMeal(search: String) {
        Repository.shared.getMeal(search: search) { meals in
            self.mealList = meals
        }
    }
    
}
