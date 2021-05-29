//
//  JSONParser.swift
//  Library-App
//
//  Created by Callum Day Ham on 5/28/21.
//

import Foundation

class JSONParser{ // class to parse any json files as needed
    
    static func getLocalData() -> [Book]{
        
        let pathString = Bundle.main.path(forResource: "books", ofType: "json")
        
        guard pathString != nil else{
            return [Book]()
        }
        
        let url = URL(fileURLWithPath: pathString!) // the ! unwraps the value to get a string i guess
        
        do{
            
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                
                let bookData = try decoder.decode([Book].self, from: data)
                
                for r in bookData{
                    r.image = "cover\(String(r.id))"
                }
                
                return bookData
            }
            catch{
                
                print(error)
            }
        }
        catch{
            
            print(error)
        }
        
        return [Book]()
    }
}
