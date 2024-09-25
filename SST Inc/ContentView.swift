//
//  ContentView.swift
//  SST Inc
//
//  Created by Clytia Wee Ci En on 9/9/24.
//

import SwiftUI
struct ContentView: View {
    @State private var playerName: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 500, height: 10000)
                
                VStack {
                    Text("Welcome Player")
                        .foregroundColor(.green)
                        .font(.system(size: 49))
                        .fontWeight(.bold)
                        .padding()
                    TextField("Enter your name", text: $playerName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                        .frame(width: 250)
                    
                    NavigationLink(destination: SecondPageView(playerName: playerName)) {
                        Rectangle()
                            .fill(playerName.isEmpty ? Color.gray : Color.red)
                            .frame(width: 170, height: 90)
                            .cornerRadius(20)
                            .overlay(
                                Text("Start Game")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                            )
                    }
                    .disabled(playerName.isEmpty)
                }
                .padding()
            }
        }
    }
}

struct SecondPageView: View {
    var playerName: String = ""
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            Text("Hello, \(playerName)!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding([.top, .leading], 20)
        }
    }
}



#Preview {
    ContentView()
}

