//
//  HomeView.swift
//  FoodApp
//
//  Created by dmitry on 02.09.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                ProjectColors.background.edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Text("Delicious \nfood for you").font(Font.custom(ProjectFonts.RoundedBold, size: 34))
                        Spacer()
                    }.padding(.leading, 40)
                    .padding()
                    HStack{
                        Button(
                            action: {
                                
                        },
                            label: {
                            HStack{
                                Image("search").padding(7).padding(.leading)
                                Text("Search").font(Font.custom("SFUIDisplay-Bold", size: 16)).foregroundColor(ProjectColors.gray).bold()
                                Spacer()
                            }.padding(9)
                        })
                        .background(Color(UIColor(red: 0.938, green: 0.934, blue: 0.934, alpha: 1)))
                        .clipShape(Capsule())
                    }
                    .padding(.leading,40)
                    .padding(.trailing,40)
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {_ in
                                Button(action: {

                                }) {
                                    Text("Item").foregroundColor(.white)
                                }
                            }
                        }.padding(.top, 30)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                    }.padding()
                    CategoryCardView(category: Category(idCategory: 1, strCategory: "Beef",strCategoryThumb: "https://www.themealdb.com/images/category/beef.png"))
                    Spacer()
                }
                .background(NavigationConfigurator { nc in
                    nc.navigationBar.barTintColor = UIColor(red: 0.738, green: 0.73, blue: 0.729, alpha: 1)
                })
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                ToolbarItem(placement: .automatic) {
                        Button(action: {

                        }) {
                            Image("shopping-cart")
                        }
                    }
                }.onAppear(perform: {
                    Repository.shared.getCategory(){_ in 
                        
                    }
                })
            }
        }
    }
}


struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
