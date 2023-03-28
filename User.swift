//
//  User.swift
//  HomeWork7
//
//  Created by Аяз on 27/3/23.
//

import Foundation

// 3. Создать структуру User c параметрами id, name, age и isVerified. Создать массив User и заполнить данными. Составить программу с помощью функции map(), которая пройдется по вашему массиву и вернет, только тех User, у которых isVerified = true.

struct User{
    var id: Int
    var name: String
    var age: Int
    var isVerified: Bool
    
}

var user1 = [
    User(id: 33, name: "Ayaz", age: 15, isVerified: true),
    User(id: 34, name: "Nurs", age: 28, isVerified: true),
    User(id: 14, name: "Erzzhan", age: 14, isVerified: false)
]

var isVerifiedUsers = user1.map { user in
    return user.isVerified ? user : nil
}.compactMap { $0 }


print(isVerifiedUsers)
