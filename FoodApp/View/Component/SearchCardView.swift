//
//  SearchCardView.swift
//  FoodApp
//
//  Created by dmitry on 06.09.2021.
//

import SwiftUI

struct SearchCardView: View {
    let meal: Meal
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 30.0)
            .size(CGSize(width: 160.0, height: 250.0))
            .foregroundColor(.white)
            .frame(width: 160, height: 250, alignment: .center)
            .padding(.top, 30)
            .shadow(color: Color.init(UIColor(red: 0.225, green: 0.225, blue: 0.225, alpha: 0.1)),radius: 60, x: -30)
        
                VStack{
                    Image(uiImage: meal.strMealThumb.loadImage())
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 140)
                        .padding(.bottom, 40)
                    Text(meal.strMeal).font(Font.custom("SFProRounded-Semibold", size: 22))
                }
                .padding(.bottom, 50)
    }
}
}

struct SearchCardView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCardView(meal: Meal(idMeal: 52977, strMeal:"Corba", strMealThumb: "https://www.themealdb.com/images/media/meals/58oia61564916529.jpg"))            .previewLayout(.fixed(width: 250, height: 250))
            .background(Color.gray)
    }
}
