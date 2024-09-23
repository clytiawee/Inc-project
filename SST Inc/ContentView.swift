//
//  ContentView.swift
//  SST Inc
//
//  Created by Clytia Wee Ci En on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "calendar")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("hi")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
