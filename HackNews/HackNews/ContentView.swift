//
//  ContentView.swift
//  HackNews
//
//  Created by HTLILI on 03/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Morning")
                Text("Hello, world!")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
