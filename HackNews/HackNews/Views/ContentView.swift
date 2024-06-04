//
//  ContentView.swift
//  HackNews
//
//  Created by HTLILI on 03/06/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailViews(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("HackNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//let posts = [Post(id: "1", title: "Hello"),
//             Post(id: "2", title: "Bonjour"),
//             Post(id: "3", title: "Hola")
//]
