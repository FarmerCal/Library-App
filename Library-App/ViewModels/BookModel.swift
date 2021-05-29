//
//  BookModel.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import SwiftUI

class BookModel: ObservableObject{
   
    @Published var books = [Book]()
    
    init(){
        
        books = JSONParser.getLocalData()
    }
}

