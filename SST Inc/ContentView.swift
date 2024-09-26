//
//  ContentView.swift
//  SST Inc
//
//  Created by Clytia Wee Ci En on 9/9/24.
//

import SwiftUI
import SwiftPersistence

struct ContentView: View {
    @State private var playerName: String = ""
    @State private var count: Int = 0
    @State private var isPresent: Bool = false
    var Colour: Color {
        if playerName.isEmpty == true {
            return .gray
        }else {
            return .blue
        }
    }
    var body: some View {
        NavigationView {
            if count == 0 {
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
                        TextField("Enter your name", text: $playerName, prompt: Text("Enter your name"))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.bottom, 20)
                            .frame(width: 250)
                            .foregroundStyle(Color.black)
                        Button {
                            isPresent.toggle()
                        }label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Colour)
                                .frame(width: 200, height:70)
                                .overlay(
                                    Text("Start")
                                        .foregroundStyle(Color.black)
                                )
                        }
                        .disabled(playerName.isEmpty)
                        .fullScreenCover(isPresented: $isPresent) {
                            SecondPageView(playerName: playerName)
                                .transition(.slide)
                        }
                    }
                }
            }else {
                SecondPageView(playerName: playerName)
            }
            }
        }
    }

struct SecondPageView: View {
    @State var playerName: String = ""
    @State private var Hint: Bool = false
    @State private var edit: Bool = false
    @State private var alerts: Bool = false
    @State private var next: Bool = false
    @State private var chosen = "Avyan"
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                Text("Hello, \(playerName)!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding([.top, .leading], 20)
            }
            .toolbar {
                Button {
                    withAnimation(.spring) {
                        Hint.toggle()
                    }
                }label: {
                    Image(systemName: "questionmark.circle.fill")
                }
            }
            .sheet(isPresented: $Hint) {
                Image("hmm")
                    .resizable()
                    .frame(width: 350, height: 350)
                Spacer()
                Text("Someone has stole the incoins! We will help you find out who did it! Now, follow us through this journey.")
                Spacer()
                Spacer()
                Button {
                    Hint = false
                    next.toggle()
                }label: {
                    Text("Next")
                }.buttonStyle(.bordered)
                    .interactiveDismissDisabled()
            }
            .sheet(isPresented: $next) {
                Image("hmm")
                    .resizable()
                    .frame(width: 350, height: 350)
                Spacer()
                List {
                    Picker("Choose who you think is the thief💰", selection: $chosen) {
                        Text("Avyan").tag("Avyan")
                        Text("Glenn").tag("Glenn")
                    }.pickerStyle(.inline)
                }
                Button {
                    next = false
                }label: {
                    Text("Choose")
                }.buttonStyle(.bordered)
                .interactiveDismissDisabled()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        edit.toggle()
                    }label: {
                        Text("Edit name")
                    }
                }
            }
            .sheet(isPresented: $edit) {
                Form {
                    TextField("Name:", text: $playerName)
                }
                Button {
                    if playerName.isEmpty {
                        
                    }else {
                        alerts.toggle()
                    }
                }label: {
                    Text("Confirm")
                }.buttonStyle(.bordered)
                    .alert(isPresented: $alerts) {
                        Alert(
                            title: Text("Confirm"),
                            message: Text("Confirm Name Change?"),
                            primaryButton: .destructive(
                                Text("Cancel"),
                                action: hello
                            ), secondaryButton: .default (
                                Text("ok"),
                                action: okie
                            )
                        )
                    }
                    .disabled(playerName.isEmpty)
            }
        }
    }
    func hello() {
        alerts = false
    }
    func okie() {
        edit = false
    }
}



#Preview {
    ContentView()
}

