//
//  TabItemView.swift
//  FoodApp
//
//  Created by dmitry on 06.09.2021.
//

import SwiftUI

struct TabItemView: View {
    @Binding var selection : Int
    let tag: Int
    let imagName: String
    var body: some View {
        if selection==tag{
            Image(imagName)
                .renderingMode(.template)
                .foregroundColor(ProjectColors.orange)
                .shadow(color: Color.init(UIColor(red: 0.842, green: 0.219, blue: 0, alpha: 0.4)), radius: 20, y: 6)
        }
        else {
            Button(action: {
                selection = tag
            }, label: {
                Image(imagName)
                    .renderingMode(.template)
                    .foregroundColor(ProjectColors.gray)
            })
            
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(selection: .constant(3), tag: 3, imagName: "history")
    }
}
