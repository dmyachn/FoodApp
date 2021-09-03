//
//  TabChoiceView.swift
//  FoodApp
//
//  Created by dmitry on 02.09.2021.
//

import SwiftUI

struct TabChoiceView: View {
    
    @State private var tabBarHeight = UIScreen.main.bounds.size.height
    @State private var tabBarWidth = UIScreen.main.bounds.size.width
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .tag(0)
            StopperView()
                .tag(1)
            StopperView()
                .tag(2)
            StopperView()
                .tag(3)
        }
//        .frame(width: tabBarWidth, height: tabBarHeight, alignment: .leading)
//        .opacity(0)
        .overlay(
            VStack {
                Spacer()
                        HStack{
                            if selection==0{
                                        Image("home")
                                            .renderingMode(.template)
                                            .foregroundColor(ProjectColors.orange)
                            }
                            else {
                                Button(action: {
                                    selection = 0
                                }, label: {
                                        Image("home")
                                            .renderingMode(.template)
                                            .foregroundColor(ProjectColors.gray)
                                })
                            }
                            Spacer()
                            if selection==1{
                                Image("heart")
                                    .renderingMode(.template)
                                    .foregroundColor(ProjectColors.orange)
                            }
                            else {
                                Button(action: {
                                    selection = 1
                                }, label: {
                                    Image("heart")
                                        .renderingMode(.template)
                                        .foregroundColor(ProjectColors.gray)
                                })
                                
                            }
                            Spacer()
                            
                            if selection==2{
                                Image("user")
                                    .renderingMode(.template)
                                    .foregroundColor(ProjectColors.orange)
                            }
                            else {
                                Button(action: {
                                    selection = 2
                                }, label: {
                                    Image("user")
                                        .renderingMode(.template)
                                        .foregroundColor(ProjectColors.gray)
                                })
                                
                            }
                            Spacer()
                            
                            if selection==3{
                                Image("history")
                                    .renderingMode(.template)
                                    .foregroundColor(ProjectColors.orange)
                            }
                            else {
                                Button(action: {
                                    selection = 3
                                }, label: {
                                    Image("history")
                                        .renderingMode(.template)
                                        .foregroundColor(ProjectColors.gray)
                                })
                                
                            }
                        }.padding(.bottom, 50)
                        .padding(.leading,60)
                        .padding(.trailing,60)
                        
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabChoiceView()
    }
}
