//
//  Person.swift
//  ContactList
//
//  Created by Vsevolod Lashin on 18.04.2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        var result: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.names.shuffled()
        let emails = DataStore.shared.names.shuffled()
        let phones = DataStore.shared.names.shuffled()
            
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let result = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
        }
        
        return result
    }
}
