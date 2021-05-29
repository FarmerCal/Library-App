//
//  BookCardView.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import SwiftUI

struct BookCardView: View{
    
    @EnvironmentObject var model:BookModel
    
    var body: some View{

        VStack{
            
            Rectangle()
            Text("hi")
        }
    }
}

struct BookCardView_Previews: PreviewProvider{
    static var previews: some View{
        BookCardView()
    }
}
