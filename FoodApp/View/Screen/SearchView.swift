//
//  SearchView.swift
//  FoodApp
//
//  Created by dmitry on 06.09.2021.
//

import SwiftUI

struct SearchView: View {
//    @ObservedObject var categoryMealVM: CategoryMealVM
    @Environment(\.presentationMode) var presentationMode
    @State var searchText: String = ""
    
    let data = (1...10).map { "Item \($0)" }

        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        ZStack {
        ProjectColors.background.edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Button(
                        action: {
                            presentationMode.wrappedValue.dismiss()
                    },
                        label: {
                            Image("chevron-left")
                        }).padding(.trailing)
                    TextField("Search", text: $searchText).font(.custom(ProjectFonts.RoundedSemiBold, size: 17))
//                        .onChange(of: searchText, perform: { value in
//                            categoryMealVM.getMeal(search: value)
//                        })
                }.padding()
                HStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(ProjectColors.searchBackgroundGray)
                        .overlay(
                            VStack{
                                ScrollView {
//                                    Text("Found \(categoryMealVM.mealList.count()) results")
                                Text("Found 10 results").font(.custom(ProjectFonts.RoundedBold, size: 28))
                                    .padding()
                                            LazyVGrid(columns: columns, spacing: 20) {
                                                ForEach(data, id: \.self) { item in
                                                    SearchCardView(meal: Meal(idMeal: 52977, strMeal:"Corba", strMealThumb: "https://www.themealdb.com/images/media/meals/58oia61564916529.jpg"))
                                                }
                                            }
                                            .padding(.horizontal)
                                        }
                            }
                        )
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
