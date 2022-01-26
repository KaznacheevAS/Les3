//
//  User.swift
//  Les3
//
//  Created by Anton Kaznacheev on 22.01.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let foto: String
    let skil: String
    let content: String
    
    var descriptor: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
            Person(
                name: "Anton",
                surname: "Kaznacheev",
                foto: "AntonKaznacheev",
                skil: "IOS and Bitrix24 Devellopers",
                content: "В частности, существующая теория создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса вывода текущих активов. Внезапно, базовые сценарии поведения пользователей являются только методом политического участия и заблокированы в рамках своих собственных рациональных ограничений. Современные технологии достигли такого уровня, что внедрение современных методик влечет за собой процесс внедрения и модернизации стандартных подходов.")
    }
}
