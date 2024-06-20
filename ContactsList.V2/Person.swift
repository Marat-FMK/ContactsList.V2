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
    
    func getPerson() -> [Person] {
        
        var persons: [Person] = []
        
        var names = DataManager.anyContact.names.shuffled()
        var surnames = DataManager.anyContact.surnames.shuffled()
        var emails = DataManager.anyContact.emails.shuffled()
        var phones = DataManager.anyContact.phones.shuffled()
        
        for _ in 1...names.count {
            
            let person: Person = Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phone: phones.randomElement() ?? "")
            
            persons.append(person)
            
            if names.contains(person.name) || surnames.contains(person.surname)||emails.contains(person.email)||phones.contains(person.phone) {
                names = names.filter{ $0 != person.name}
                surnames = surnames.filter{ $0 != person.surname}
                emails = emails.filter{$0 != person.email}
                phones = phones.filter { $0 != person.phone}
            }
        }
        return persons
    }
    
}


