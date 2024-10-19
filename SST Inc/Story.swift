//
//  Story.swift
//  SST Inc
//
//  Created by Chuah Cheng Hang on 12/10/24.
//

import SwiftUI

struct Story: View {
    @AppStorage("seenStoryBefore") private var a: Int = 0
    @State private var currentPage = 0
        let storyPages = [
            "On a seemingly ordinary Friday afternoon, the halls of SST. are abuzz with end-of-week energy. Employees wrap up their tasks, unaware that a meticulously planned theft is about to unfold.",
            "THERE HAS BEEN A HEIST",
            "Three masked mysterious figures commited heist right under the noses of the security team. With expert precision, they bypass state-of-the-art security systems and breach the vault containing the coveted Incoin.",
            "As chaos erupts, alarm bells ring, and the building is placed on lockdown. The air is thick with tension as investigators scramble to piece together the events leading up to the theft. But amid the confusion, one crucial question remains: who are the thieves, and how did they manage to pull off such an audacious plan?",
            "So far, the INCthorities has considered Tall Avayan as the prime suspect",
            "The INCthorities need YOUR help",
            "YOU are Inc’s last hope...",
            "Now its your turn! Answer questions to help INCthorities find out who stole the INCoins",
            "...... answer questions to help the INCthorities find out who stole the INCoins and how much they stole. Help them to expose these robbers and turn them in "
        ]
    @State private var goToContentView: Bool = false
    @Environment(\.colorScheme) var colorScheme
    @State private var lightMode: Bool = false
    var body: some View {
        if a == 0 {
            VStack {
                Text(storyPages[currentPage])
                    .padding()
                    .font(.title)
                HStack {
                    if currentPage == storyPages.count - 1 {
                        Button {
                            
                        }label: {
                            Text("Back")
                        }
                        Spacer()
                        Button {
                            if colorScheme == .dark {
                                goToContentView.toggle()
                            }else {
                                lightMode.toggle()
                            }
                        }label: {
                            Text("Let's go")
                        }
                    }else {
                        Button(action: {
                            if currentPage > 0 {
                                currentPage -= 1
                            }
                        }) {
                            Text("Back")
                        }
                        .disabled(currentPage == 0)
                        Spacer()
                        Button(action: {
                            if currentPage < storyPages.count - 1 {
                                currentPage += 1
                            }
                        }) {
                            Text("Next")
                        }
                    }
                }
                .alert(isPresented: $lightMode) {
                    Alert(
                        title: Text("Aw"),
                        message: Text("It seems that you are using light mode. Please switch to dark mode to continue"),
                        primaryButton: .destructive(Text("Cancel"), action: cancels),
                        secondaryButton: .default(Text("OK"), action: oks)
                    )
                }
                .fullScreenCover(isPresented: $goToContentView) {
                    ContentView()
                }
                .padding()
                
                if currentPage == storyPages.count - 1 {
                    Button(action: {
                        currentPage = 0
                    }) {
                        Text("Restart")
                    }
                    .padding()
                }
            }
        }else if a == 1 {
            ContentView()
        }
    }
    func cancels() {
        
    }
    func oks() {
        
    }
    }

#Preview {
    Story()
}
