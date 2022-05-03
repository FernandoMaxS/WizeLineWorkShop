//
//  BookDetail.swift
//  BookList
//
//  Created by Fernando Maximiliano on 01/05/22.
//

import Foundation

enum Genre: String{
    case fantasy
    case action
    case history
    case present
    case drama
    case scienceFiction
    case business
    case economics
}

struct BookDetail: Identifiable{
    let id: String
    let bookId: Int
    let author: String
    let title: String
    let price: Double
    let genre: [Genre]
    let kind: String
    let description: String
    let imageName: String
    let isAvailable: Bool
}
