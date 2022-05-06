//
//  seventhPage.swift
//  homework5
//
//  Created by Nail Kamilov on 06.05.2022.
//

import SwiftUI

struct seventhPage: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    @State private var selectedItem = 3
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
                Text("Settings").foregroundColor(.white)
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
                    ZStack {
                        Text("History")
                            .font(.system(size: 17, weight: .semibold))
                            .frame(width: 130, height: 40, alignment: .center)
                    }.foregroundColor(.white)
                    VStack {
                        HStack {
                            Text("21.11.22")
                        }.foregroundColor(.white)
                            .frame(width: 350, height: 40, alignment: .leading)
                            .font(.system(size: 20, weight: .semibold))
                        Four()
                        HStack {
                            Text("20.11.22")
                        }.foregroundColor(.white)
                            .frame(width: 350, height: 40, alignment: .leading)
                            .font(.system(size: 20, weight: .semibold))
                        Four()
                        HStack {
                            Text("19.11.22")
                        }.foregroundColor(.white)
                            .frame(width: 350, height: 40, alignment: .leading)
                            .font(.system(size: 20, weight: .semibold))
                        Four()
                        
                    }
                    Spacer()
                }
            }
            
            .tabItem {
                Image(systemName: "book.closed")
                Text("History")
            }.tag(3)
        }.accentColor(.blue)
    }
}


struct Four: View {
    var body: some View {
        Group {
            HStack {
                FileView(file: .example)
            }
            Divider().background(Color.white)
            HStack {
                FileView(file: .example2)
            }
            Divider().background(Color.white)
        }.padding(10)
        
    }
}

struct File: Identifiable, Hashable {
    let id = UUID()
    
    let name: String
    var time: String {
        "\(Int.random(in: 1...12)):\(Int.random(in: 1...60)):\(Int.random(in: 1...60)) "
    }

    var children: [File] = []

    static let example = File(name: "Focus time")
    static let example2 = File(name: "Break time")
    
    static var dates: File {
        File(name: "\(Int.random(in: 1...31)).\(Int.random(in: 1...12)).2022",
             children: Array(repeating: File.example, count: 2))
    }
    
}


struct FileView: View {
    let file: File

    var body: some View {
        ZStack {
            HStack {
                Text(file.name)
                    .foregroundColor(.white)
                Spacer()
                Text(file.time)
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(.white)
            }.frame(width: 350, height: 3)
        }
    }
}

struct seventhPage_Previews: PreviewProvider {
    static var previews: some View {
        seventhPage()
    }
}


