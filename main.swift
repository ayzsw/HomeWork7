//
//  main.swift
//  HomeWork7
//
//  Created by Аяз on 27/3/23.
//

import Foundation

// 1. Составить замыкание, которое считает кол-во букв в нашем предложении, которое мы вводим в консоли.

var word = {( () -> ()).self
    var writeText = readLine()!
    print(writeText.count)
}
word()

// 2. Составить замыкание, которое переводит наши деньги в курс доллара.

var valuta: (Double) -> ()

func changeNum(number: Double){
    let change = number * 87.42
    print("\(number) in Kyrgyz som - \(change)")
}

valuta = changeNum
valuta(567.0)
// 3. Создать структуру User c параметрами id, name, age и isVerified. Создать массив User и заполнить данными. Составить программу с помощью функции map(), которая пройдется по вашему массиву и вернет, только тех User, у которых isVerified = true.

// 4.
func filter(users: [User], completion: (Int) -> ()) {
    for user in users {
        completion(user.age)
    }
}

filter(users: user1) { age in
    if age < 18{
        print(age)
    }
}

filter(users: user1) { age in
    if age > 40{
        print(age)
    }
}
// Докончить логику функции. Замыкание принимает возраст каждого User. Вызвать функции 2 раза. В одном передать условия распечатать только тех кто младше 18, в другом кто старше 40.
