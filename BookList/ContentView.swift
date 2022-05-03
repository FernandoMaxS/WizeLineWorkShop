//
//  ContentView.swift
//  BookList
//
//  Created by Fernando Maximiliano on 27/04/22.
//

import SwiftUI

struct ContentView: View {
    var book : BookDetail
    @State var animate: Bool = false
    @State private var showingAlert = false
    
    static var randomMinRange: Double = 5.0
    static var randomMaxRange: Double = 8.0
    
    
    
    var body: some View {
        NavigationView {
            VStack(alignment:.center, spacing:10){
                Image(book.imageName)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: .gray, radius: 6, x: 1, y: 1)
                    .frame(width: 200, height: 300)
                    .scaleEffect(animate ? 1 : 0)
                    .rotationEffect(.degrees(animate ? 0 : 180))
                    .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 1), value: animate)
                Text(book.author)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                Text(book.title).bold()
                Text(book.description)
                    .foregroundColor(.gray)
                    .font(.caption)
                HStack{
                    
                    ForEach(0..<book.genre.count, id:\.self) { i in
                        GenreButton(label: book.genre[i].rawValue)
                    }
                    
                }
                Divider()
                    .padding(10)
                Button(action: {
                    }) {
                    Text("Buy for 18.85$")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                        )
                    
                }
                .scaleEffect(animate ? 1 : 0)
                .rotationEffect(.degrees(animate ? 0 : 180))
                .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 1), value: animate)
                .background(Color.black) // If you have this
                .cornerRadius(25)
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    /*Button("Add") {
                        showingAlert = true
                    }
                    .alert("Products are added to your shopping cart. ", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }*/
                    Button {
                        print("Cart")
                    } label: {
                        Image(systemName: "cart.fill")
                    }
                }
            }
            
            .onAppear {
                withAnimation {
                    animate.toggle()
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let book =  BookDetail(id: "0", bookId: 0, author: "J. R. R. Tolkien", title: "The Fellowship of the Ring", price: 18.85, genre: [Genre.fantasy, Genre.action], kind: "Novel",description: "The Fellowship of the Ring is the first of three volumes in The Lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the Rings is an entity named Sauron, the Dark Lord, who long ago lost the One Ring that contains much of his power. His overriding desire is to reclaim the Ring and use it to enslave all of Middle-earth.", imageName: "image-1", isAvailable: false)
        ContentView(book: book)
    }
}
