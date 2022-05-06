//
//  fifthPage.swift
//  homework5
//
//  Created by Nail Kamilov on 06.05.2022.
//

import SwiftUI

struct fifthPage: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    @State private var selectedItem = 2
    var body: some View {
        TabView(selection: $selectedItem) {
            
            ZStack {
                Color(red: 0.2, green: 0.2, blue: 0.2)
                .ignoresSafeArea()
            }
            
            .tabItem {
                Image(systemName: "house.fill")
                Text("Main")
            }.tag(1)
            
            //Second page
            ZStack {
                Color(red: 0.2, green: 0.2, blue: 0.2)
                .ignoresSafeArea()
                VStack {
                    ZStack {
                        Text("Settings")
                            .font(.system(size: 17, weight: .semibold))
                            .frame(width: 130, height: 22, alignment: .center)
                    }.foregroundColor(.white)
                    HStack {
                        Text("Focus time")
                            .frame(width: 326, height: 24, alignment: .topLeading)
                            .foregroundColor(.white)
                        TextField("25:00", text: .constant("25:00"))
                            .foregroundColor(.white)
                            .frame(width: 46, height: 22)
                            .keyboardType(.numberPad)
                        
                    }.padding(16)
                    Divider().background(Color.white)
                    
                    HStack {
                        Text("Break time")
                            .frame(width: 326, height: 24, alignment: .topLeading)
                            .foregroundColor(.white)
                        TextField("05:00", text: .constant("05:00")
                        ).foregroundColor(.white)
                    }.padding(16)
                    Divider().background(Color.white)
                    Spacer()
                }
            }
            
                
            
            
            .tabItem {
                Spacer()
                Image(systemName: "gearshape") 
                Text("Settings")
            }.tag(2)
            
            //Third page
            ZStack {
                Color(red: 0.2, green: 0.2, blue: 0.2)
                .ignoresSafeArea()
                VStack {
                    Text("History")
                        .foregroundColor(.white)
                }
            }
            .tabItem {
                Image(systemName: "book.closed")
                Text("History")
            }.tag(3)
        }.accentColor(.blue)
    }
}


struct fifthPage_Previews: PreviewProvider {
    static var previews: some View {
        fifthPage()
    }
}
