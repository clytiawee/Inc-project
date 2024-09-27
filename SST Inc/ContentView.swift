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
                            count += 1
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
                            SecondPageView(name1: $playerName)
                                .transition(.slide)
                        }
                    }
                }
            }else {
                SecondPageView(name1: $playerName)
            }
            }
        }
    }

struct SecondPageView: View {
    @Binding var name1: String
    @State private var Hint: Bool = false
    @State private var edit: Bool = false
    @State private var alerts: Bool = false
    @State private var next: Bool = false
    @State private var chosen = "Avyan"
    @State private var changeView: Bool = false
    @State private var counting: Int = 0
    @State private var newView: Bool = false
    @State private var fourth: Bool = false
    @State private var alertAgain: Bool = false
    @State private var returnation: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    if counting == 0 {
                        Button {
                            withAnimation(.spring) {
                                newView.toggle()
                            }
                            counting += 1
                        }label: {
                            Rectangle()
                                .fill(Color.yellow)
                                .frame(width: 380, height: 100)
                                .overlay(
                                    Text("The start of the search")
                                )
                        }
                        .disabled(false)
                        Button {
                            
                        }label: {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 380, height: 100)
                                .overlay(
                                Text("Not Available")
                                    .foregroundStyle(Color.red)
                            )
                        }
                        .disabled(true)
                        Button {
                            
                        }label: {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 380, height: 100)
                                .overlay(
                                Text("Not Available")
                                    .foregroundStyle(Color.red)
                            )
                        }
                        .disabled(true)
                        Button {
                            
                        }label: {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 380, height: 100)
                                .overlay(
                                Text("Not Available")
                                    .foregroundStyle(Color.red)
                            )
                        }
                        .disabled(true)
                    }else if counting > 0 {
                        if counting == 1 {
                            Button {
                                alertAgain.toggle()
                            }label: {
                                Rectangle()
                                    .fill(Color.yellow)
                                    .frame(width: 380, height: 100)
                                    .overlay(
                                        Text("The start of the search")
                                    )
                            }
                            .disabled(false)
                            Button {
                                fourth.toggle()
                            }label: {
                                Rectangle()
                                    .fill(Color.orange)
                                    .frame(width: 380, height: 100)
                                    .overlay(
                                    Text("Chasing the hints")
                                        .foregroundStyle(Color.cyan)
                                )
                            }
                            .disabled(false)
                            Button {
                                
                            }label: {
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 380, height: 100)
                                    .overlay(
                                    Text("Not Available")
                                        .foregroundStyle(Color.red)
                                )
                            }
                            .disabled(true)
                            Button {
                                
                            }label: {
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 380, height: 100)
                                    .overlay(
                                    Text("Not Available")
                                        .foregroundStyle(Color.red)
                                )
                            }
                            .disabled(true)
                        }else if counting == 2 {
                            
                        }
                    }
                    Spacer()
                }
                .alert(isPresented: $alertAgain) {
                    Alert(
                        title: Text("Confirm"),
                        message: Text("Confirm to return back to The start of the search?"),
                        primaryButton: .destructive(
                            Text("Cancel"),
                            action: goBack
                        ),
                        secondaryButton: .default(
                            Text("confirm"),
                            action: hola
                        )
                        
                    )
                }
                .fullScreenCover(isPresented: $returnation) {
                    firstChapter(name2: $name1, chose: $chosen, count2: $counting)
                }
                .fullScreenCover(isPresented: $newView) {
                    firstChapter(name2: $name1, chose: $chosen, count2: $counting)
                }
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
                                    withAnimation(.easeIn(duration: 5)) {
                                        next.toggle()
                                    }
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
                Text("Start Now by choosing who you think is the thief below.")
                List {
                    Picker("Choose who you think is the thief💰", selection: $chosen) {
                        Text("Pick Below(Do not pick this, or you will have an error later)").tag("invalid")
                        Text("Avyan").tag("Avyan")
                        Text("Glenn").tag("Glenn")
                    }.pickerStyle(.inline)
                }
                Button {
                    next = false
                    changeView.toggle()
                    if counting >= 1 {
                        counting = 1
                    }else {
                        counting += 1
                    }
                }label: {
                    Text("Choose")
                }.buttonStyle(.bordered)
                    .interactiveDismissDisabled()
            }
            .fullScreenCover(isPresented: $changeView) {
                firstChapter(name2: $name1, chose: $chosen, count2: $counting)
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
                    TextField("Name:", text: $name1)
                }
                Button {
                    if name1.isEmpty {
                        
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
                    .disabled(name1.isEmpty)
            }
            .navigationTitle("Hello, \(name1)!")
            }
        }
    func hello() {
        alerts = false
    }
    func okie() {
        edit = false
    }
    func goBack() {
        
    }
    func hola() {
        returnation.toggle()
    }
}
    struct firstChapter: View {
        @Binding var name2: String
        @Binding var chose: String
        @State private var mainPage: Bool = false
        @State private var confirmation: Bool = false
        @State private var mainPages: Bool = false
        @Binding var count2: Int
        var body: some View {
            NavigationStack {
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 1000000, height: 100000)
                        .overlay(
                            VStack {
                                Text("Hello World!")
                            }
                        )
                }
                .toolbar {
                    Button {
                        confirmation.toggle()
                        count2 = 1
                    }label: {
                        Text("exit")
                    }
                }
                .alert(isPresented: $confirmation) {
                    Alert(
                        title: Text("Confirm"),
                        message: Text("Confirm to exit to mainPage?"),
                        primaryButton: .destructive(
                            Text("Cancel"),
                            action: goBack
                        ),
                        secondaryButton: .default(
                            Text("confirm"),
                            action: mainPageBack
                        )
                        
                    )
                }
                .fullScreenCover(isPresented: $mainPages) {
                    SecondPageView(name1: $name2)
                }
            }
        }
        func goBack() {
            
        }
        func mainPageBack() {
            withAnimation(.spring) {
                mainPages.toggle()
            }
        }
    }



#Preview {
    ContentView()
}

