//
//  Profile.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 29.05.2021.
//



struct Profile {
    let login: String
    let password : String
    let person : Person
    static func getProfileData () -> Profile {
        return Profile(login: "ilabrosimov", password: "Password", person: Person.getPerson())
    }
}

struct Person {
    let name:String
    let lastName: String
    let age : Int
    let hobby: String
    let image: String
    var fullName :String{
        return name + " " + lastName
    }
    static func getPerson () -> Person {
        return Person(name: "Ilia", lastName: "Abrosimov", age: 32, hobby: "Занимаюсь языком swift", image: "Riders School")
    }
    
}
