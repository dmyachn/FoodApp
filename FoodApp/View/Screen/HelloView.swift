//
//  HelloView.swift
//  FoodApp
//
//  Created by dmitry on 06.09.2021.
//

import SwiftUI

struct HelloView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Image("hello").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    RoundedRectangle(cornerRadius: 20).frame(width: 270, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                        .overlay(
                            Text("Get starteed").foregroundColor(ProjectColors.orange)
                        )
                })
            }
        }
        
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
