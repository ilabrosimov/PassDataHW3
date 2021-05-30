//
//  Profile.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 29.05.2021.
//

struct Profiles {
    var login: String
    var password : String 
    
    var name : String
    var lastName: String
    var age: Int
    var hobby: String
    let imageName : String?
    
    
}
var users : [Profiles] = [
    Profiles(login: "ilabrosimov", password: "Password", name: "Ilia", lastName: "Abrosimov", age: 32, hobby: "Занимаюсь языком Swift" , imageName: "Riders School"),
    Profiles(login: "swift", password: "123", name: "Tim", lastName: "Cook", age: 60, hobby: "Разрабатываю apple девайсы" ,imageName: "Tim Cook")
]
