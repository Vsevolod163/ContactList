//
//  DataStore.swift
//  ContactList
//
//  Created by Vsevolod Lashin on 18.04.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "John",
        "Alex",
        "Susan",
        "Lina",
        "Jack",
        "Ted",
        "Molly",
        "Niki",
        "Ben",
        "Robert"
    ]
    var surnames = [
        "Black",
        "Jankin",
        "Smith",
        "Williams",
        "Butler",
        "Dow",
        "Robertson",
        "Murphy",
        "White",
        "Forest"
    ]
    var phones = [
        "3252315",
        "8384411",
        "94399251",
        "21235136",
        "84369921",
        "894929292",
        "12532621",
        "9496223",
        "125325235",
        "9436231"
    ]
    var emails = [
        "hello@gmail.com",
        "welcome@icloud.com",
        "volleyball@gmail.com",
        "house@mail.com",
        "music@icloud.com",
        "basketball@yandex.com",
        "track@gmail.com",
        "mango@icloud.com",
        "apple@gmail.com",
        "radio@mail.com"
    ]
    
    private init() {}
}

