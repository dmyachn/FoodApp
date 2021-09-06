//
//  CategoryCardView.swift
//  FoodApp
//
//  Created by dmitry on 03.09.2021.
//

import SwiftUI

struct CategoryCardView: View {
    let category: Category
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30.0)
                .size(CGSize(width: 230.0, height: 250.0))
                .foregroundColor(.white)
                .frame(width: 230, height: 320, alignment: .center)
                .padding(.top, 30)
                .shadow(color: Color.init(UIColor(red: 0.225, green: 0.225, blue: 0.225, alpha: 0.1)),radius: 60, x: -30) 
                    VStack{
                        Image(uiImage: category.strCategoryThumb.loadImage())
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Text(category.strCategory).font(Font.custom("SFProRounded-Semibold", size: 22))
                    }
                    .padding(.bottom, 200)
        }
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: Category(idCategory: 1, strCategory: "Beef",strCategoryThumb: "https://www.themealdb.com/images/category/beef.png"))
            .previewLayout(.fixed(width: 250, height: 400))
            .background(Color.gray)
    }
}
