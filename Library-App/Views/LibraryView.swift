//
//  LibraryView.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import SwiftUI

struct LibraryView: View{
    
    @EnvironmentObject var model: BookModel
    
    var body: some View{
        
        NavigationView{
            
            ScrollView {
                LazyVStack(alignment: .leading){
                    ForEach(model.books){ r in
                        
                        NavigationLink(
                            destination: BookDetailView(book:r),
                            label: {
                                BookCardView()
                            }
                        )
                    }
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider{
    
    static var previews: some View{
        
        LibraryView()
            .environmentObject(BookModel())
    }
}
