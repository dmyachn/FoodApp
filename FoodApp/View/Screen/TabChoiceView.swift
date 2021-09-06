//
//  TabChoiceView.swift
//  FoodApp
//
//  Created by dmitry on 02.09.2021.
//

import SwiftUI

struct TabChoiceView: View {
//    @ObservedObject var categoryMealVM = CategoryMealVM()
    @State private var showingModal = true
    @State private var tabBarHeight = UIScreen.main.bounds.size.height
    @State private var tabBarWidth = UIScreen.main.bounds.size.width
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
//            HomeView(categoryMealVM)
            HomeView()
                .tag(0)
            StopperView()
                .tag(1)
            StopperView()
                .tag(2)
            StopperView()
                .tag(3)
        }
        .overlay(
            VStack {
                Spacer()
                        HStack{
                            TabItemView(selection: $selection, tag: 0, imagName: "home")
                            Spacer()
                            TabItemView(selection: $selection, tag: 1, imagName: "heart")
                            Spacer()
                            TabItemView(selection: $selection, tag: 2, imagName: "user")
                            Spacer()
                            TabItemView(selection: $selection, tag: 3, imagName: "history")
                                        
                        }.padding(.bottom, 50)
                        .padding(.leading,60)
                        .padding(.trailing,60)
                        
            }
            .edgesIgnoringSafeArea(.all)
        )
        .fullScreenCover(isPresented: $showingModal, content: HelloView.init)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabChoiceView()
    }
}
