//
//  ContentView.swift
//  SST Inc
//
//  Created by Clytia Wee Ci En on 9/9/24.
//

import SwiftUI
//import SwiftPersistence

struct ContentView: View {
    @AppStorage("Name1009") private var playerName: String = ""
    @AppStorage("count11368") private var count: Int = 0
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
    @AppStorage("Chosen1380192") private var chosen = "1"
    @State private var changeView: Bool = false
    @AppStorage("Counting11829031") private var counting: Int = 1
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
                                .disabled(true)
                                Spacer()
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
                                        }label: {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.green)
                                                .frame(width: 380, height: 100)
                                                .overlay(
                                                    Text("The ending")
                                                        .foregroundStyle(Color.purple)
                                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                                                )
                                        }
                                        .disabled(false)
                                    }
                                }
                                Spacer()
                                }
                            }
                        }
            .fullScreenCover(isPresented: $thisIsNot) {
                thirdChapter(name: $name1, chose: $chosen, count: $counting)
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
                                count2 = 2
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
    @AppStorage("indexqwqdq112310") private var currentQuestionIndex: Int = 0
    @State private var showResult: Bool = false
    @State private var selectedAnswer: String? = nil
    @State private var correctAnswer1: Bool = false
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
                            correctAnswer1 = true
                                currentQuestionIndex += 1
                        }) {
                            Text(currentQuestion.correctAnswer)
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedAnswer = currentQuestion.wrongAnswer
                            showResult = true
                        }) {
                            Text(currentQuestion.wrongAnswer)
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    if showResult {
                        Text(resultText(for: currentQuestion))
                            .font(.subheadline)
                            .padding(.top, 20)
                        
                        Button("Retry Question") {
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
                        count = 3
                    }
                    .padding(.top, 20)
                }
            }
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
        }
        .fullScreenCover(isPresented: $correctAnswer1) {
            QuestionsAnswerOne()
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
struct QuestionsAnswerOne: View {
    @State private var showResult: Bool = true
    @AppStorage("currenQuestionIndex20123210") private var currentQuestionIndex: Int = 0
    @State private var selectedAnswer: String? = nil
    @State private var goBackToQuestions: Bool = false
    @State private var count1: Int = 0
    @State private var name1: String = ""
    @State private var chose1: String = ""
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
            wrongFeedback: "They came in as maintenance workers, so it would make sense to leave as maintenance workers."),
        Question(backgroundStory: "end",
                 question: "end",
                 correctAnswer: "end",
                 wrongAnswer: "end",
                 correctFeedback: "end",
                 wrongFeedback: "end")
    ]
    var body: some View {
        VStack {
            if showResult {
                let currentQuestion = questions[currentQuestionIndex]
                Text(resultText(for: currentQuestion))
                    .font(.subheadline)
                    .foregroundColor(resultColor())
                    .padding(.top, 20)
                if currentQuestionIndex < 5 {
                    Button("Next Question") {
                        if currentQuestionIndex < 5 {
                            currentQuestionIndex += 1
                            selectedAnswer = nil
                            showResult = false
                            goBackToQuestions = true
                        }else {
                            selectedAnswer = nil
                            showResult = false
                            goBackToQuestions = true
                        }
                    }
                    .padding(.top, 20)
                }else {
                    Button("Next Question") {
                            selectedAnswer = nil
                            showResult = false
                            goBackToQuestions = true
                        }
                    }
                }
        }
        .fullScreenCover(isPresented: $goBackToQuestions) {
            secondChapter(name: $name1, chose: $chose1, count: $count1)
        }
    }
    func resultText(for question: Question) -> String {
            return question.correctFeedback
    }
    
    func resultColor() -> Color {
        .green
    }
}

struct QuestionOne {
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
    @State private var confirmation: Bool = false
    @State private var mainPages: Bool = false
    @Binding var count: Int
    @AppStorage("currenQuestionIndex8931231") private var currentQuestionIndex: Int = 0
    @State private var showResult: Bool = false
    @State private var selectedAnswer: String? = nil
    @State private var correctAnswer1: Bool = false
    let questions = [
        Question(
            backgroundStory: "Following the heist, Tall Avyan and Teddie head to a remote cabin in sungei buloh and live off grid under fake identities to avoid being caught. You used your investigation skills to interview bystanders and find out where the INCoins are stored.",
            question: "You are now going on a search to find the INCoins. Where do you search?",
            correctAnswer: "An old storage unit",
            wrongAnswer: "Sungei buloh",
            correctFeedback: "The old storage unit that no one knew about actually belonged to teddie where she disguised it as an encrypted digital wallet.",
            wrongFeedback: "Tall Avyan and Teddie live there but the INCoins are stored somewhere else beacuse it is not safe, so you did not find anything." ),
        Question(
            backgroundStory: "While interviewing people, you found out that there was a safe which most likely contains the INCoins. You need to track down the safe in order to find it’s location, but in order to do that you neeed a passcode.",
            question: " What is the passcode?",
            correctAnswer: "330",
            wrongAnswer: "764",
            correctFeedback: "It was the number of INCoins. You managed to track down the safe",
            wrongFeedback: "You could not track the safe so you could not find teddie" ),
        Question(
            backgroundStory: "On the way to the location stated on the tracker, your internet started to fail and the location of the safe could not be seen anymore. You had to rely on your memory to find the safe.",
            question: "What did you do?",
            correctAnswer: "Find someone near by and ask them if they can share their moblie hotspot with you",
            wrongAnswer: "Switch on and off your Wi-fi",
            correctFeedback: "You came back online and continued on your journey to find the INCoins and the robbers",
            wrongFeedback: "Absolutely nothing happened, you were far from the city so even if you reloaded your wi-fi nothing would happen." ),
        Question(
            backgroundStory: "You finally got to the storage unit and found teddie chilling inside. She told you that she decided to change for the good and help recover the INCoins.",
            question: "Do you believe that teddie has become gud?",
            correctAnswer: "Yes I trust that Teddie became the Alpha Sigma",
            wrongAnswer: "No thats very skibidi",
            correctFeedback: "Teddy reveals that she’s been in contact with a shadowy figure known as “The Broker,” who has plans to sell the stolen INCoin on the dark web. Teddie turns out to be an undercover agent for SST inc, seeking to track down Tall Avyan and recover the INCoin.",
            wrongFeedback: "You wrongly accused Teddie and bro got so mad that she exploded into tiny smithereens. She eventually recovered but she refused to help you and conspired with Tall Avyan and sammy. They eventually managed to sell the INCoins on the dark web to the Broker." ),
        Question(
            backgroundStory: "You finally found out who the Broker is, and plan to use him to find out Tall Avyan’s location.",
            question: "How did you do it?",
            correctAnswer: "Under the INCthorities’ supervision, you bribed and tricked the Broker into telling you Tall Avyan’s ip address",
            wrongAnswer: "You held the Broker’s family hostage and forced the Broker to tell you Tall Avyan’s ip address",
            correctFeedback: "The INCthorities arrested the Broker for accepting bribes and you actually got the ip address of Tall Avyan",
            wrongFeedback: " You were tricked by the Broker and arrested the wrong person because he gave you the wrong ip address. You were arrested by the police for kidnapping the broker’s family for ransom and also for false and unlawful arrest of an innocent citizen." ),
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
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
                            correctAnswer1 = true
                                currentQuestionIndex += 1
                        }) {
                            Text(currentQuestion.correctAnswer)
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedAnswer = currentQuestion.wrongAnswer
                            showResult = true
                        }) {
                            Text(currentQuestion.wrongAnswer)
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                    if showResult {
                        Text(resultText(for: currentQuestion))
                            .font(.subheadline)
                            .foregroundStyle(resultColor())
                            .padding(.top, 20)
                        
                        Button("Retry Question") {
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
                        count = 3
                    }
                    .padding(.top, 20)
                }
            }
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
        }
        .fullScreenCover(isPresented: $correctAnswer1) {
            QuestionsAnswer(currentQuestionIndex: currentQuestionIndex)
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
struct QuestionsAnswer: View {
    @State private var showResult: Bool = true
    @AppStorage("index331232140") var currentQuestionIndex: Int = 0
    @State private var selectedAnswer: String? = nil
    @State private var goBackToQuestions: Bool = false
    @State private var count1: Int = 0
    @State private var name1: String = ""
    @State private var chose1: String = ""
    let questions = [
        Question(
            backgroundStory: "Following the heist, Tall Avyan and Teddie head to a remote cabin in sungei buloh and live off grid under fake identities to avoid being caught. You used your investigation skills to interview bystanders and find out where the INCoins are stored.",
            question: "You are now going on a search to find the INCoins. Where do you search?",
            correctAnswer: "An old storage unit",
            wrongAnswer: "Sungei buloh",
            correctFeedback: "The old storage unit that no one knew about actually belonged to teddie where she disguised it as an encrypted digital wallet.",
            wrongFeedback: "Tall Avyan and Teddie live there but the INCoins are stored somewhere else beacuse it is not safe, so you did not find anything." ),
        Question(
            backgroundStory: "Following the heist, Tall Avyan and Teddie head to a remote cabin in sungei buloh and live off grid under fake identities to avoid being caught. You used your investigation skills to interview bystanders and find out where the INCoins are stored.",
            question: "You are now going on a search to find the INCoins. Where do you search?",
            correctAnswer: "An old storage unit",
            wrongAnswer: "Sungei buloh",
            correctFeedback: "The old storage unit that no one knew about actually belonged to teddie where she disguised it as an encrypted digital wallet.",
            wrongFeedback: "Tall Avyan and Teddie live there but the INCoins are stored somewhere else beacuse it is not safe, so you did not find anything." ),
        Question(
            backgroundStory: "While interviewing people, you found out that there was a safe which most likely contains the INCoins. You need to track down the safe in order to find it’s location, but in order to do that you neeed a passcode.",
            question: " What is the passcode?",
            correctAnswer: "330",
            wrongAnswer: "764",
            correctFeedback: "It was the number of INCoins. You managed to track down the safe",
            wrongFeedback: "You could not track the safe so you could not find teddie" ),
        Question(
            backgroundStory: "On the way to the location stated on the tracker, your internet started to fail and the location of the safe could not be seen anymore. You had to rely on your memory to find the safe.",
            question: "What did you do?",
            correctAnswer: "Find someone near by and ask them if they can share their moblie hotspot with you",
            wrongAnswer: "Switch on and off your Wi-fi",
            correctFeedback: "You came back online and continued on your journey to find the INCoins and the robbers",
            wrongFeedback: "Absolutely nothing happened, you were far from the city so even if you reloaded your wi-fi nothing would happen." ),
        Question(
            backgroundStory: "You finally got to the storage unit and found teddie chilling inside. She told you that she decided to change for the good and help recover the INCoins.",
            question: "Do you believe that teddie has become gud?",
            correctAnswer: "Yes I trust that Teddie became the Alpha Sigma",
            wrongAnswer: "No thats very skibidi",
            correctFeedback: "Teddy reveals that she’s been in contact with a shadowy figure known as “The Broker,” who has plans to sell the stolen INCoin on the dark web. Teddie turns out to be an undercover agent for SST inc, seeking to track down Tall Avyan and recover the INCoin.",
            wrongFeedback: "You wrongly accused Teddie and bro got so mad that she exploded into tiny smithereens. She eventually recovered but she refused to help you and conspired with Tall Avyan and sammy. They eventually managed to sell the INCoins on the dark web to the Broker." ),
        Question(
            backgroundStory: "You finally found out who the Broker is, and plan to use him to find out Tall Avyan’s location.",
            question: "How did you do it?",
            correctAnswer: "Under the INCthorities’ supervision, you bribed and tricked the Broker into telling you Tall Avyan’s ip address",
            wrongAnswer: "You held the Broker’s family hostage and forced the Broker to tell you Tall Avyan’s ip address",
            correctFeedback: "The INCthorities arrested the Broker for accepting bribes and you actually got the ip address of Tall Avyan",
            wrongFeedback: " You were tricked by the Broker and arrested the wrong person because he gave you the wrong ip address. You were arrested by the police for kidnapping the broker’s family for ransom and also for false and unlawful arrest of an innocent citizen." ),
        Question(
            backgroundStory: "You finally found out who the Broker is, and plan to use him to find out Tall Avyan’s location.",
            question: "How did you do it?",
            correctAnswer: "Under the INCthorities’ supervision, you bribed and tricked the Broker into telling you Tall Avyan’s ip address",
            wrongAnswer: "You held the Broker’s family hostage and forced the Broker to tell you Tall Avyan’s ip address",
            correctFeedback: "The INCthorities arrested the Broker for accepting bribes and you actually got the ip address of Tall Avyan",
            wrongFeedback: " You were tricked by the Broker and arrested the wrong person because he gave you the wrong ip address. You were arrested by the police for kidnapping the broker’s family for ransom and also for false and unlawful arrest of an innocent citizen." ),
    ]
    var body: some View {
        VStack {
            if showResult {
                let currentQuestion = questions[currentQuestionIndex]
                Text(resultText(for: currentQuestion))
                    .font(.subheadline)
                    .foregroundColor(resultColor())
                    .padding(.top, 20)
                    Button("Next Question") {
                            currentQuestionIndex += 1
                            selectedAnswer = nil
                            showResult = false
                            goBackToQuestions = true
                    }
                    .padding(.top, 20)
                }
        }
        .fullScreenCover(isPresented: $goBackToQuestions) {
            thirdChapter(name: $name1, chose: $chose1, count: $count1)
        }
    }
    func resultText(for question: Question) -> String {
            return question.correctFeedback
    }
    
    func resultColor() -> Color {
        .green
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


#Preview {
    ContentView()
}

