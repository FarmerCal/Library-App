//
//  BookDetailView.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import SwiftUI

struct BookDetailView: View {
    
    var book:Book
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        
        VStack{
            
            Text(book.content[0])
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookModel()
        BookDetailView(book: model.books[0])
    }
}
