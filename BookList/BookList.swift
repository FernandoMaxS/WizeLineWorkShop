//
//  BookList.swift
//  BookList
//
//  Created by Fernando Maximiliano on 27/04/22.
//

import SwiftUI


var books: [Book] = [
    Book(id: 0, title: "The Fellowship of the Ring", author: "J. R. R. Tolkien", price: 18.85, imageName: "image-1"),
    Book(id: 1, title: "The Two Towers", author: "J. R. R. Tolkien", price: 11.99, imageName: "image-4"),
    Book(id: 2, title: "Homo Deus: A Brief History of Tomorrow", author: "Yuval Noah Harari", price: 19.99, imageName: "image-5"),
    Book(id: 3, title: "The 4-Hour Workweek", author: "Timothy Ferriss", price: 16.15, imageName: "image-6"),
    Book(id: 4, title: "Man's Search for Meaning", author: "Viktor E. Frankl", price: 12.25, imageName: "image-7"),
    Book(id: 5, title: "The Odyssey", author: "Homer", price: 10.99, imageName: "image-8"),
    Book(id: 6, title: "Artificial Intelligence: A Modern Approach", author: "Stuart J. Rossell", price: 22.99, imageName: "image-9"),
    Book(id: 7, title: "Creativity, Inc.", author: "Ed Catmull", price: 17.85, imageName: "image-10")
]


var booksDetail: [BookDetail] = [
  BookDetail(id: "0", bookId: 0, author: "J. R. R. Tolkien", title: "The Fellowship of the Ring", price: 18.85, genre: [Genre.fantasy, Genre.action], kind: "Novel",description: "The Fellowship of the Ring is the first of three volumes in The Lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the Rings is an entity named Sauron, the Dark Lord, who long ago lost the One Ring that contains much of his power. His overriding desire is to reclaim the Ring and use it to enslave all of Middle-earth.", imageName: "image-1", isAvailable: false),
  BookDetail(id: "2", bookId: 1, author: "J. R. R. Tolkien", title: "The Two Towers", price: 11.99, genre: [Genre.fantasy, Genre.action], kind: "Novel", description: "The Fellowship was scattered. Some were bracing hopelessly for war against the ancient evil of Sauron. Some were contending with the treachery of the wizard Saruman. Only Frodo and Sam were left to take the accursed Ring of Power to be destroyed in Mordor–the dark Kingdom where Sauron was supreme. Their guide was Gollum, deceitful and lust-filled, slave to the corruption of the Ring.", imageName: "image-4", isAvailable: false),
  BookDetail(id: "1", bookId: 2, author: "Yuval Noah Harari", title: "Homo Deus: A Brief History of Tomorrow", price: 19.99, genre: [Genre.history], kind: "Discussion",description: "Yuval Noah Harari envisions a near future in which we face a new set of challenges. Homo Deus explores the projects, dreams and nightmares that will shape the twenty-first century and beyond – from overcoming death to creating artificial life.", imageName: "image-5", isAvailable: false),
  BookDetail(id: "1", bookId: 3, author: "Timothy Ferriss", title: "The 4-Hour Workweek", price: 16.15, genre: [Genre.present], kind: "Lifestyle",description: "Forget the old concept of retirement and the rest of the deferred-life plan - there is no need to wait and every reason not to, especially in unpredictable economic times. Whether your dream is escaping the rat race, experiencing high-end world travel, earning a monthly five-figure income with zero management, or just living more and working less, this book is the blueprint.", imageName: "image-6", isAvailable: false),
  BookDetail(id: "1", bookId: 4, author: "Viktor E. Frankl", title: "Man's Search for Meaning", price: 12.25, genre: [Genre.history, Genre.drama], kind: "Psychology",description: "Psychiatrist Viktor Frankl's memoir has riveted generations of readers with its descriptions of life in Nazi death camps and its lessons for spiritual survival. Between 1942 and 1945 Frankl labored in four different camps, including Auschwitz, while his parents, brother, and pregnant wife perished.", imageName: "manSearch", isAvailable: false),
  BookDetail(id: "1", bookId: 5, author: "image-7", title: "The Odyssey", price: 10.99, genre: [Genre.fantasy, Genre.history], kind: "Novel",description: "After enduring the Trojan War, Odysseus begins the treacherous journey home to Ithaca. On the way, he faces ravenous monsters and vengeful gods. But the real battle awaits, as his kingdom is under siege by unruly suitors vying for his wife’s hand—and his son’s head. To reclaim his throne and save his family, Odysseus must rely on his wits…and help from the unpredictable gods.", imageName: "image-8", isAvailable: false),
  BookDetail(id: "1", bookId: 6, author: "Stuart J. Rossell", title: "Artificial Intelligence: A Modern Approach", price: 22.99, genre: [Genre.scienceFiction, Genre.present], kind: "AI", description: "The long-anticipated revision of this best-selling text offers the most comprehensive, up-to-date introduction to the theory and practice of artificial intelligence.", imageName: "image-9", isAvailable: false),
  BookDetail(id: "1", bookId: 7, author: "Ed Catmull", title: "Creativity, Inc.", price: 17.85, genre: [Genre.business, Genre.economics], kind: "Print",description: "This is the story behind the company that changed animation forever. Here, the founder of Pixar reveals the ideas and techniques that have made Pixar one of the most widely admired creative businesses, and one of the most profitable.", imageName: "creativity", isAvailable: false)
]


struct BookList: View {
    var body: some View {
        NavigationView{
            List(books) { book in
               Row(book: book)
            }
            .navigationTitle("Book List")
        }
        
        
    }
}
struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
