//
//  firstPage.swift
//  homework5
//
//  Created by Nail Kamilov on 05.05.2022.
//

import SwiftUI

struct firstPage: View {
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
                ZStack {
                    VStack(spacing: 22) {
                        Text("Focus on your task")
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
                        CircleTrack(circleTo: 1)
                        ZStack(alignment: .center) {
                            Text("25:00")
                                .foregroundColor(.white)
                                .font(.system(size: 44, weight: .bold))
                        }
                    }.padding(20)
                    VStack {
                HStack(alignment: .center, spacing: 30) {
                    playButton()
                    Spacer()
                    stopButton()
                }.frame(width: 192, height: 56)
                    }.padding(10)
                }
            }
            //First page
            
            .tabItem {
                Image(systemName: "house.fill")
                Text("Main")
            }.tag(1)
            
            //Second page
            ZStack {
                Image("BG")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Text("Settings")
                }
            }
            .tabItem {
                Image(systemName: "gearshape")
                Text("Settings")
            }.tag(2)
            
            //Third page
            ZStack {
                Image("BG")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Text("History")
                }
            }
            .tabItem {
                Image(systemName: "book.closed")
                Text("History")
            }.tag(3)
        }.accentColor(.blue)
    }
}

struct stopButton: View{
    var body: some View{
        VStack{
            Button(action: {}){
                ZStack{
                    Circle()
                        .fill(.white)
                        .opacity(0.3)
                        .frame(width: 56, height: 56)
                    Image(systemName: "stop.fill")
                        .font(.system(size: 22.5, weight: .bold))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct playButton: View{
    var body: some View{
        VStack{
            Button(action: {}){
                ZStack{
                    Circle()
                        .fill(.white)
                        .opacity(0.3)
                        .frame(width: 56, height: 56)
                    Image(systemName: "play.fill")
                        .font(.system(size: 22.5, weight: .bold))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct pauseButton: View{
    var body: some View{
        VStack{
            Button(action: {}){
                ZStack{
                    Circle()
                        .fill(.white)
                        .opacity(0.3)
                        .frame(width: 56, height: 56)
                    Image(systemName: "pause.fill")
                        .font(.system(size: 22.5, weight: .bold))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct CircleTrack: View {
    var circleTo: Double
    var body: some View {
        Circle()
            .stroke(Color.white, lineWidth: 6)
            .opacity(0.3)
            .frame(width: 250, height: 250)
            .overlay(
                Circle()
                    .trim(from: 0.0, to: circleTo)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
            )
    }
}

struct firstPage_Previews: PreviewProvider {
    static var previews: some View {
        firstPage()
    }
}
