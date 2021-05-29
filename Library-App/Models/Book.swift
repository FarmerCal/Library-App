//
//  Book.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import SwiftUI

class Book: Identifiable, Decodable{
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    var image:String?
    
}

