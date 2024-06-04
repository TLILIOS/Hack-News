//
//  PostData.swift
//  HackNews
//
//  Created by HTLILI on 04/06/2024.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let url: String?
    let title: String
}
