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
    
    static func getPerson() -> [Person] {
        let dataStore = DataStore.init()
        var result: [Person] = []
        
        for _ in dataStore.names {
            let randomName = dataStore.names.randomElement() ?? ""
            let randomSurname = dataStore.surnames.randomElement() ?? ""
            let randomPhone = dataStore.phones.randomElement() ?? ""
            let randomEmail = dataStore.emails.randomElement() ?? ""
            
            result.append(
                Person(
                    name: randomName,
                    surname: randomSurname,
                    phone: randomPhone,
                    email: randomEmail
                )
            )
            
            dataStore.names.removeAll(where: { $0 == randomName })
            dataStore.surnames.removeAll(where: { $0 == randomSurname })
            dataStore.phones.removeAll(where: { $0 == randomPhone })
            dataStore.emails.removeAll(where: { $0 == randomEmail })
        }
        
        return result
    }
}
