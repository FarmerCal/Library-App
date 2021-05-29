//
//  Library_App.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import SwiftUI

@main
struct Library_App: App{
    
    var body: some Scene{
        
        WindowGroup{
            
            LibraryView()
                .environmentObject(BookModel())
        }
    }
}
