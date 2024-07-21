//
//  User.swift
//  newProject
//
//  Created by Harun Bicakci on 7/13/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
         
        return "" // in a real app we can return image maybe?
    }
    
}

extension User{
    static var MOCK_USER = User(id: NSUUID().uuidString,
                                fullname: "Kobe Bryant",
                                email: "test@gmail.com ")
}
