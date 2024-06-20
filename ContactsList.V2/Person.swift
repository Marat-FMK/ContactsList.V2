//
//  Person.swift
//  ContactsList.V2
//
//  Created by Marat Fakhrizhanov on 20.06.2024.
//

import Foundation
struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
