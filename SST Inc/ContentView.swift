//
//  ContentView.swift
//  SST Inc
//
//  Created by Clytia Wee Ci En on 9/9/24.
//

import SwiftUI
//import SwiftPersistence

struct ContentView: View {
    @State private var playerName: String = ""
    @State private var count: Int = 0
    @State private var isPresent: Bool = false
    
    var Colour: Color {
            return playerName.isEmpty ? .gray : .blue
        }
    
    var body: some View {
           NavigationView {
               if count == 0 {
                   ZStack {
                       Rectangle()
                           .fill(Color.black)
                           .edgesIgnoringSafeArea(.all)
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
                           } label: {
                               RoundedRectangle(cornerRadius: 10)
                                   .fill(Colour)
                                   .frame(width: 200, height: 70)
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
               } else {
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
                                                .foregroundColor(.blue)
                                                .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                Text("Confirm"),
                                                action: restartProgress1
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
                                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                    Text("Confirm"),
                                                    action: restartProgress1
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
                                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                    Text("Confirm"),
                                                    action: restartProgress2
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
                                                        .foregroundStyle(Color.purple)
                                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                            .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                        Text("Confirm"),
                                                        action: restartProgress1
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
                                                            .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                        Text("Confirm"),
                                                        action: restartProgress2
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
                                                            .foregroundStyle(Color.red)
                                                            .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                                                        Text("Confirm"),
                                                        action: restartProgress3
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
                                                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
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
                thirdChapter(name: $name1, chose: $chosen, count: $counting)
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
                                        action: nameChange
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
    func nameChange() {
        edit = false
    }
    func goBack() {
        
    }
    func restartProgress1() {
        returnation = true
    }
    func restartProgress2() {
        fourth = true
    }
    func restartProgress3() {
        thisIsNot = true
    }
}
                
struct firstChapter: View {
        @State private var currentPage = 0
        let storyPages = [
            "On a seemingly ordinary Friday afternoon, the halls of SST are abuzz with end-of-week energy. Employees wrap up their tasks unaware that a meticulously planned theft is about to unfold.",
            "THERE HAS BEEN A HEIST",
            "Three masked mysterious figures have commited a heist right under the noses of the security team. With expert precision, they bypassed state-of-the-art security systems and breached the vault containing the coveted INCoins.",
            "Chaos erupts, alarm bells ring, and the building is placed on lockdown. The air is thick with tension as investigators scramble to piece together the events leading up to the theft. But amid the confusion, two crucial questions remains: who are the thieves, and how did they manage to pull off such an audacious heist?",
            "So far, the INCthorities has considered Tall Avayan as the prime suspect",
            "The INCthorities need YOUR help",
            "YOU are Inc’s last hope...",
            "Answer questions to help the INCthorities find out who stole the INCoins and how much they stole. Help them expose these robbers and turn them in!"
        ]
        
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
                VStack {
                    Spacer()
                    Text(storyPages[currentPage])
                        .padding()
                        .font(.title)
                        .multilineTextAlignment(.center)

                    Spacer()
                    HStack {
                        Button(action: {
                            if currentPage > 0 {
                                currentPage -= 1
                            }
                        }) {
                            Text("Back")
                                .bold()
                        }
                        .disabled(currentPage == 0)

                        Spacer()
                        if currentPage == storyPages.count - 1 {
                            Button {
                                mainPages = true
                            } label: {
                                Text("Let's Go")
                                    .bold()
                            }
                        } else {
                            Button(action: {
                                if currentPage < storyPages.count - 1 {
                                    currentPage += 1
                                }
                            }) {
                                Text("Next")
                                    .bold()
                            }
                        }
                    }
                    .padding()

                    if currentPage == storyPages.count - 1 {
                        Button(action: {
                            currentPage = 0
                        }) {
                            Text("Restart")
                                .bold()
                        }
                        .padding(.top, 20)
                    }

                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding()
                .toolbar {
                    Button {
                        confirmation.toggle()
                        count2 = 1
                    }label: {
                        Text("Exit")
                            .bold()
                    }
                }
                .fullScreenCover(isPresented: $mainPages) {
                    SecondPageView(name1: $name2)
                }
                .alert(isPresented: $confirmation) {
                    Alert(
                        title: Text("Confirm"),
                        message: Text("Confirm to exit to Main Page?"),
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
    @State private var currentQuestionIndex: Int = 0
    @State private var showResult: Bool = false
    @State private var selectedAnswer: String? = nil
    
    let questions = [
        Question(
            backgroundStory: "You arrived at Inc HQ and decided to search the area for any clues.",
            question: "Where do you go to inspect?",
            correctAnswer: "The INCoin vault",
            wrongAnswer: "The discussion room",
            correctFeedback: "You found Teddy's handkerchief with his name on it. He dropped it while stealing the INCoins.",
            wrongFeedback: "You did not find anything." ),
        Question(
            backgroundStory: "You found the surveillance room and decided to check the CCTVs.",
            question: "There are two buttons, red or green. Which do you pick?",
            correctAnswer: "The green button",
            wrongAnswer: "The red button",
            correctFeedback: "You found out the date and time the INCoins were stolen: Friday afternoon after school.",
            wrongFeedback: "The CCTVs self-destructed and exploded." ),
        Question(
            backgroundStory: "You found out that there were 3 masked robbers that participated in the heist.",
            question: "How did you identify them?",
            correctAnswer: "You saw the tattoo on one of the robber’s arms",
            wrongAnswer: "You saw the scar on one of the robber’s face",
            correctFeedback: "You identified that one of the robbers was the infamous Sanny and another was Tall Avyan.",
            wrongFeedback: "The scar was covered by the mask, so you could not identify anyone." ),
        Question(
            backgroundStory: "After figuring out who stole the INCoins, you reviewed the CCTV footage again in more detail.",
            question: "How did the trio steal the INCoins?",
            correctAnswer: "The trio snuck in as maintenance workers and used Sanny’s knowledge of the building.",
            wrongAnswer: "The trio found a secret underground passage from outside.",
            correctFeedback: "They located the secret vault using Sanny's knowledge of the building.",
            wrongFeedback: "If it was an underground passage, there wouldn't be CCTVs." ),
        Question(
            backgroundStory: "After getting the INCoins, the trio had to find a way to leave SST Inc.",
            question: "How did they leave SST Inc?",
            correctAnswer: "The trio left normally, disguised as maintenance workers.",
            wrongAnswer: "They knocked out the security guard and ran out.",
            correctFeedback: "They disguised themselves as maintenance workers to leave the building.",
            wrongFeedback: "They came in as maintenance workers, so it would make sense to leave as maintenance workers.")
    ]
    
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
                            count = 2
                        } label: {
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
                
                if currentQuestionIndex < questions.count {
                    let currentQuestion = questions[currentQuestionIndex]
                    
                    Text(currentQuestion.backgroundStory)
                        .font(.title3)
                        .padding()
                    
                    Text(currentQuestion.question)
                        .font(.headline)
                        .padding()
                    
                    VStack(spacing: 20) {
                        Button(action: {
                            selectedAnswer = currentQuestion.correctAnswer
                            showResult = true
                        }) {
                            Text(currentQuestion.correctAnswer)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedAnswer = currentQuestion.wrongAnswer
                            showResult = true
                        }) {
                            Text(currentQuestion.wrongAnswer)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    if showResult {
                        Text(resultText(for: currentQuestion))
                            .font(.subheadline)
                            .foregroundColor(resultColor())
                            .padding(.top, 20)
                        
                        Button("Next Question") {
                            currentQuestionIndex += 1
                            selectedAnswer = nil
                            showResult = false
                        }
                        .padding(.top, 20)
                    }
                } else {
                    Text("You've completed all the questions!")
                        .font(.title)
                        .padding()
                    
                    Button("Return to Main Page") {
                        mainPages.toggle()
                    }
                    .padding(.top, 20)
                }
            }
        }
    }
    
    func resultText(for question: Question) -> String {
        if selectedAnswer == question.correctAnswer {
            return question.correctFeedback
        } else {
            return question.wrongFeedback
        }
    }
    
    func resultColor() -> Color {
        return selectedAnswer == questions[currentQuestionIndex].correctAnswer ? .green : .red
    }
    
    func goBack() {}
    
    func mainPageBack() {
        withAnimation(.spring) {
            mainPages.toggle()
        }
    }
}

struct Question {
    let backgroundStory: String
    let question: String
    let correctAnswer: String
    let wrongAnswer: String
    let correctFeedback: String
    let wrongFeedback: String
}

struct thirdChapter: View {
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
                            count = 3
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



#Preview {
    ContentView()
}

