//
//  fourthPage.swift
//  homework5
//
//  Created by Nail Kamilov on 06.05.2022.
//

import SwiftUI

struct fourthPage: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    @State private var selectedItem = 1
    var body: some View {
        TabView(selection: $selectedItem) {
            ZStack {
                Image("BG")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color.white)
                    VStack {
                        HStack {
                            Spacer()
                            Text("Focus Category")
                                .font(.system(size: 16, weight: .medium))
                            Spacer()
                            Image(systemName: "xmark")
                        }.padding(22)
                        Spacer()
                        VStack {
                            straightforwardVGrid
                            Spacer()
                        }
                    }
                    }.frame(height: 362)
                }.edgesIgnoringSafeArea(.all)
                ZStack {
                    VStack(spacing: 22) {
                        Text("Break")
                            .font(.system(size: 17, weight: .semibold))
                            .frame(width: 200, height: 24)
                            .foregroundColor(.white)
                    }
                }
                VStack{
                    Button(action: {}){
                        ZStack{
                            RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.3))
                                .frame(width: 170, height: 36)
                            HStack{
                                Image(systemName: "pencil")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.white)
                                Text("Focus Category")
                                    .foregroundColor(.white)
                                }
                            }
                        }
                        Spacer().frame(height: 600)
                                }
                VStack {
                    ZStack (alignment: .center) {
                        CircleTrack(circleTo: 0.1)
                        ZStack(alignment: .center) {
                            Text("04:48")
                                .foregroundColor(.white)
                                .font(.system(size: 44, weight: .bold))
                        }
                    }.padding(20)
                    VStack {
                HStack(alignment: .center, spacing: 30) {
//                    pauseButton()
                    Spacer()
//                    stopButton()
                }.frame(width: 192, height: 56)
                    }.padding(10)
                }
            }
            //First page
//            .tabItem {
//                Image(systemName: "house.fill")
//                Text("Main")
//            }.tag(1)
//            
//            //Second page
//            ZStack {
//                Image("BG")
//                    .resizable()
//                    .ignoresSafeArea()
//                VStack {
//                    Text("Settings")
//                }
//            }
//            .tabItem {
//                Image(systemName: "gearshape")
//                Text("Settings")
//            }.tag(2)
//            
//            //Third page
//            ZStack {
//                Image("BG")
//                    .resizable()
//                    .ignoresSafeArea()
//                VStack {
//                    Text("History")
//                }
//            }
//            .tabItem {
//                Image(systemName: "book.closed")
//                Text("History")
//            }.tag(3)
        }.accentColor(.blue)
    }
}

var straightforwardVGrid: some View {
    VStack {
        HStack {
            ZStack {
                item
                Text("Work")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 124, height: 28)
            }
            ZStack {
                item
                Text("Study")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 124, height: 28)
            }
        }.padding(10)
        HStack {
            ZStack {
                item
                Text("Workout")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 124, height: 28)
            }
            ZStack {
                item
                Text("Reading")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 124, height: 28)
            }
        }.padding(10)
        HStack {
            ZStack {
                item
                Text("Meditation")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 124, height: 28)
            }
            ZStack {
                item
                Text("Others")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 124, height: 28)
            }
        }.padding(10)
    }
}

var item: some View {
    RoundedRectangle(cornerRadius: 24)
        .fill(Color.black.opacity(0.3))
        .frame(width: 172, height: 60)
    }



struct fourthPage_Previews: PreviewProvider {
    static var previews: some View {
        fourthPage()
    }
}
