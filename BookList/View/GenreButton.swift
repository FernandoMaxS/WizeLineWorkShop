//
//  GenreButton.swift
//  BookList
//
//  Created by Fernando Maximiliano on 01/05/22.
//

import SwiftUI

struct GenreButton: View {
    let label : String
    var body: some View {
        Button(action: {}, label:{
            Text(label)
                .foregroundColor(.black)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 1)
                )
        })
    }
}

struct GenreButton_Previews: PreviewProvider {
    static var previews: some View {
        let text = "Demo"
        GenreButton(label: text)
    }
}
