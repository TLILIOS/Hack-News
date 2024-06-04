//
//  DetailViews.swift
//  HackNews
//
//  Created by HTLILI on 04/06/2024.
//

import SwiftUI
import WebKit
struct DetailViews: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailViews(url: "https://www.google.com")
    
}

    

