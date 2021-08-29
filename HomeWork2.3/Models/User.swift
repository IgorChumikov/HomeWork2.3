//
//  User.swift
//  HomeWork2.3
//
//  Created by Игорь Чумиков on 29.08.2021.
//

import Foundation

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getUser() -> [User] {
        [
            User(
                name: "Igor",
                password: "Paris",
                person: Person(
                    name: "Igor",
                    lastName: "Chumikov",
                    work: "Я работаю в компании ОЗОН, Аналитиком 1С ",
                    hobby: "Люблю ходить в спорт зал, слушать латинскую музыку (Maluma, Anuel aa, J.Balvin, Bad Bunny), сейчас изучаю Swift - очень хочу работать разработчиком мобильных приложений, изучаю не много английский язык, в будущим хочу пожить в другой стране")
            )
        ]
    }
}

struct Person {
    let name: String
    let lastName: String
    let work: String
    let hobby: String
}
