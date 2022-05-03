//
//  Book.swift
//  BookList
//
//  Created by Fernando Maximiliano on 28/04/22.
//

import Foundation

struct Book: Identifiable {
    let id    : Int
    let title  : String
    let author : String
    let price  : Double
    let imageName : String
}
