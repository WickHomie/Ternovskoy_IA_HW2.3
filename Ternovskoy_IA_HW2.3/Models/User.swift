//
//  User.swift
//  Ternovskoy_IA_HW2.3
//
//  Created by Илья Терновской on 31.01.2022.
//

import CoreText

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPersonInfo()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let info: PersonalInformation
    
    var userFullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonInfo() -> Person {
        Person(name: "Илья", surname: "Терновской", info: PersonalInformation.getInfoAbout())
    }
}

struct PersonalInformation {
    let intro: String
    let work: String
    
    static func getInfoAbout() -> PersonalInformation {
        PersonalInformation(
            intro: "Добрый день! Меня зовут Илья и это мое первое приложение! Я очень рад возможности, разделить с Вами этот незабываемый опыт, пот, слезы, но прежде всего НЕОПИСУЕМОЕ СЧАСТЬЕ при достижении успеха! Маленькими шажками к большой мечте!",
            work: "Тут будет немного обо мне. Я работаю менеджером в крупной Resale сети. Работаю непосредственно с техникой Apple, от сюда и безумная любовь к продукции и бренду. Мечтаю дарить счастье людям от качественно организованных, приятных и понятных приложений на любимом гаджете, спать с маком и видеть во снах совершенствование кода. СПАСИБО Вашей команде за возможность познакомиться с эти чудесным миром программирования! 🥰"
        )
    }
}
