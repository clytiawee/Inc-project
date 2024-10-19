//
//  ContentView.swift
//  SST Inc
//
//  Created by Clytia Wee Ci En on 9/9/24.
//

import SwiftUI
import SwiftPersistence

struct ContentView: View {
    @AppStorage("Name1") private var playerName: String = ""
    @AppStorage("count1") private var count: Int = 0
    @Environment(\.colorScheme) var colorScheme
    @State private var isPresent: Bool = false
    @State private var color: String = ""
    @State private var alert: Bool = false
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
                        .frame(width: 10000, height: 10000)
                    
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
                            color = colorScheme == .light ? "light" : "dark"
                            if color == "light" {
                                alert.toggle()
                            }else {
                                isPresent.toggle()
                                count += 1
                            }
                        }label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Colour)
                                .frame(width: 200, height:70)
                                .overlay(
                                    Text("Start")
                                        .foregroundStyle(Color.black)
                                )
                        }
                        .alert(isPresented: $alert) {
                            Alert(
                                title: Text("Hmm"),
                                message: Text("It seems that you have light mode enabled. Please switch to dark mode to start :D.")
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
    @AppStorage("Chosen1") private var chosen = "1"
    @State private var changeView: Bool = false
    @AppStorage("Counting1") private var counting: Int = 1
    @State private var newView: Bool = false
    @State private var fourth: Bool = false
    @State private var alertAgain: Bool = false
    @State private var returnation: Bool = false
    @State private var alertAgainagain: Bool = false
    @State private var sixth: Bool = false
    @State private var abc: Bool = false
    @State private var new: Bool = false
    @State private var yes: Bool = false
    @State private var no: Bool = false
    @State private var mhm: Bool = false
    @State private var thisIsNot: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                        VStack {
                            if counting == 1 {
                                Button {
                                    returnation.toggle()
                                    counting += 1
                                }label: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.yellow)
                                        .frame(width: 380, height: 100)
                                        .overlay(
                                            Text("The start of the search")
                                        )
                                }
                                .disabled(false)
                                Button {
                                    
                                }label: {
                                    RoundedRectangle(cornerRadius: 10)
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
                                    RoundedRectangle(cornerRadius: 10)
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
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.gray)
                                        .frame(width: 380, height: 100)
                                        .overlay(
                                            Text("Not Available")
                                                .foregroundStyle(Color.red)
                                        )
                                }
                                Spacer()
                                .disabled(true)
                            }else if counting > 1 {
                                if counting == 2 {
                                    Button {
                                        alertAgain.toggle()
                                    }label: {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.yellow)
                                            .frame(width: 380, height: 100)
                                            .overlay(
                                                Text("The start of the search")
                                            )
                                    }
                                    .alert(isPresented: $alertAgain) {
                                        Alert(
                                            title: Text("Confirm"),
                                            message: Text("Confirm to return back to The start of the search? Your progress will be restarted to here again."),
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
                                    .disabled(false)
                                    Button {
                                        fourth.toggle()
                                        counting += 1
                                    }label: {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.orange)
                                            .frame(width: 380, height: 100)
                                            .overlay(
                                                Text("Chasing of the hints")
                                                    .foregroundStyle(Color.black)
                                            )
                                    }
                                    .disabled(false)
                                    Button {
                                        
                                    }label: {
                                        RoundedRectangle(cornerRadius: 10)
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
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.gray)
                                            .frame(width: 380, height: 100)
                                            .overlay(
                                                Text("Not Available")
                                                    .foregroundStyle(Color.red)
                                            )
                                    }
                                    .disabled(true)
                                }
                                if counting > 2 {
                                    if counting == 3 {
                                        Button {
                                            abc.toggle()
                                        }label: {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.yellow)
                                                .frame(width: 380, height: 100)
                                                .overlay(
                                                    Text("The start of the search")
                                                )
                                        }                    .alert(isPresented: $abc) {
                                            Alert(
                                                title: Text("Confirm"),
                                                message: Text("Confirm to return back to The start of the search? Your progress will be restarted to here again."),
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
                                        .disabled(false)
                                        Button {
                                            alertAgainagain.toggle()
                                        }label: {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.orange)
                                                .frame(width: 380, height: 100)
                                                .overlay(
                                                    Text("Chasing of the hints")
                                                        .foregroundStyle(Color.black)
                                                )
                                        }
                                        .alert(isPresented: $alertAgainagain) {
                                            Alert(
                                                title: Text("Confirm"),
                                                message: Text("Confirm to return back to Chasing of the hints? Your progress will be restarted to here again."),
                                                primaryButton: .destructive(
                                                    Text("Cancel"),
                                                    action: goBack
                                                ),
                                                secondaryButton: .default(
                                                    Text("confirm"),
                                                    action: bruh
                                                )
                                                
                                            )
                                        }
                                        .disabled(false)
                                        Button {
                                            thisIsNot.toggle()
                                            counting += 1
                                        }label: {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.green)
                                                .frame(width: 380, height: 100)
                                                .overlay(
                                                    Text("The continuation of the search")
                                                        .foregroundStyle(Color.brown)
                                                )
                                        }
                                        .disabled(false)
                                        Button {
                                            
                                        }label: {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.gray)
                                                .frame(width: 380, height: 100)
                                                .overlay(
                                                    Text("Not Available")
                                                        .foregroundStyle(Color.red)
                                                )
                                        .disabled(true)

                                    }
                                }
                                    if counting > 3 {
                                        if counting == 4 {
                                            Button {
                                                new.toggle()
                                            }label: {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.yellow)
                                                    .frame(width: 380, height: 100)
                                                    .overlay(
                                                        Text("The start of the search")
                                                    )
                                            }
                                            .alert(isPresented: $new) {
                                                Alert(
                                                    title: Text("Confirm"),
                                                    message: Text("Confirm to return back to The start of the search? Your progress will be restarted to here again."),
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
                                            Button {
                                                yes.toggle()
                                            }label: {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.orange)
                                                    .frame(width: 380, height: 100)
                                                    .overlay(
                                                        Text("Chasing of the hints")
                                                            .foregroundStyle(Color.black)
                                                    )
                                            }
                                            .alert(isPresented: $yes) {
                                                Alert(
                                                    title: Text("Confirm"),
                                                    message: Text("Confirm to return back to Chasing of the hints? Your progress will be restarted to here again."),
                                                    primaryButton: .destructive(
                                                        Text("Cancel"),
                                                        action: goBack
                                                    ),
                                                    secondaryButton: .default(
                                                        Text("confirm"),
                                                        action: bruh
                                                    )
                                                )
                                            }
                                            Button {
                                                no.toggle()
                                            }label: {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.green)
                                                    .frame(width: 380, height: 100)
                                                    .overlay(
                                                        Text("The continuation of the search")
                                                            .foregroundStyle(Color.brown)
                                                    )
                                            }
                                            .alert(isPresented: $no) {
                                                Alert(
                                                    title: Text("Confirm"),
                                                    message: Text("Confirm to return back to The continuation of the search? Your progress will be restarted to here again."),
                                                    primaryButton: .destructive(
                                                        Text("Cancel"),
                                                        action: goBack
                                                    ),
                                                    secondaryButton: .default(
                                                        Text("confirm"),
                                                        action: nvm
                                                    )
                                                )
                                            }
                                            Button {
                                                mhm.toggle()
                                                counting += 1
                                            }label: {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.green)
                                                    .frame(width: 380, height: 100)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 10)
                                                            .fill(Color.cyan)
                                                            .frame(width: 380, height: 100)
                                                            .overlay(
                                                                Text("The finishing")
                                                                    .foregroundStyle(Color.purple)
                                                            )
                                                    )
                                            }
                                        }
                                    }
                                }
                                Spacer()
                                }
                            }
                        }
            .fullScreenCover(isPresented: $thisIsNot) {
                secondLastChapter(name: $name1, chose: $chosen, count: $counting)
            }
            .fullScreenCover(isPresented: $mhm) {
                fourthChapter(name: $name1, chose: $chosen, count: $counting)
            }
                            .fullScreenCover(isPresented: $returnation) {
                                firstChapter(name2: $name1, chose: $chosen, count2: $counting)
                            }
                            .fullScreenCover(isPresented: $fourth) {
                                secondChapter(name: $name1, chose: $chosen, count: $counting)
                            }
                    .toolbar {
                        Button {
                            withAnimation(.spring) {
                                Hint = true
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
                                next = true
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
                            Picker("Choose who you think is the thief💰", selection: $chosen) {  Text("Avyan").tag("Avyan")
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
                                edit = true
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
                                alerts = true
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
        returnation = true
    }
    func bruh() {
        fourth = true
    }
    func nvm() {
        thisIsNot = true
    }
}
                
    struct firstChapter: View {
        @Binding var name2: String
        @Binding var chose: String
        @State private var mainPage: Bool = false
        @State private var confirmation: Bool = false
        @State private var mainPages: Bool = false
        @Binding var count2: Int
        @State private var choseAgain: Bool = false
        @State private var sheets: Bool = false
        var body: some View {
            NavigationStack {
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 1000000, height: 100000)
                        .overlay(
                            VStack {
                                Text("The start of the search")
                            }
                        )
                }
                .onAppear() {
                    if chose == "1" {
                        sheets.toggle()
                    }else {
                        sheets = false
                    }
                }
                .sheet(isPresented: $sheets) {
                    Picker("Choose who you think is the thief💰", selection: $chose) {
                        Text("Tall Avyan").tag("Tall Avyan")
                        Text("Glenn").tag("Glenn")
                    }.pickerStyle(.inline)
                    Button {
                        sheets = false
                    }label: {
                        Text("Choose")
                    }.buttonStyle(.bordered)
                        .interactiveDismissDisabled()
                }
                .toolbar {
                    Button {
                        confirmation.toggle()
                        count2 = 2
                    }label: {
                        Text("exit")
                    }
                }
                .fullScreenCover(isPresented: $mainPages) {
                    SecondPageView(name1: $name2)
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
                
 struct secondChapter: View {
    @Binding var name: String
     @Binding var chose: String
    @State private var confirmation: Bool = false
    @State private var mainPages: Bool = false
     @Binding var count: Int
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 1000000, height: 100000)
                    .overlay(
                Text("Chasing of the hints")
                )
                    .toolbar {
                        Button {
                            confirmation.toggle()
                            count = 3
                        }label: {
                            Text("exit")
                        }
                    }
                    .fullScreenCover(isPresented: $mainPages) {
                        SecondPageView(name1: $name)
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

struct secondLastChapter: View {
    @Binding var name: String
    @Binding var chose: String
    @State private var confirmation2: Bool = false
    @State private var mainPages: Bool = false
    @Binding var count: Int
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello World!")
                    .toolbar {
                        Button {
                            confirmation2.toggle()
                            count = 4
                        }label: {
                            Text("exit")
                        }
                    }
                    .alert(isPresented: $confirmation2) {
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
                        SecondPageView(name1: $name)
                    }
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

struct fourthChapter: View {
    @Binding var name: String
    @Binding var chose: String
    @State private var confirmation2: Bool = false
    @State private var mainPages: Bool = false
    @Binding var count: Int
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello World!")
                    .toolbar {
                        Button {
                            confirmation2.toggle()
                            count = 5
                        }label: {
                            Text("exit")
                        }
                    }
                    .alert(isPresented: $confirmation2) {
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
                        SecondPageView(name1: $name)
                    }
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

