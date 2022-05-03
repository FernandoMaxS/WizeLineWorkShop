//
//  Row.swift
//  BookList
//
//  Created by Fernando Maximiliano on 01/05/22.
//

import SwiftUI

struct Row: View {
    var book : Book
   
    var body: some View {
        let priceText: String = String(format: "%.2f", book.price)
        VStack(alignment: .leading, spacing: 5) {
            NavigationLink(destination: NavigationLazyView(ContentView(book: booksDetail[book.id])), label: {
                HStack(spacing: 30) {
                    Image(book.imageName)
                        .resizable()
                        .frame(width: 75, height: 100)
                    VStack{
                        Text(book.title).font(.title2).foregroundColor(.black)
                        Text(book.author).font(.title2).foregroundColor(.gray)
                            .padding(.bottom)
                        Text("$ \(priceText) MXN")
                            .foregroundColor(.black)
                            .font(.headline)
                            .bold()
                    }
                    
                }
            }
            )
        }.frame( height: 150, alignment: .center)
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        let book = Book(id: 0,title: "Libro 1", author: "Demo", price: 250.00, imageName: "image-1")
        Row(book: book)
    }
}
