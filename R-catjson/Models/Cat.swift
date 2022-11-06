//
//  Cat.swift
//  R-catjson
//
//  Created by Kirill Lozovoi on 11/6/22.
//

struct Cat: Decodable {
    let arr: Array<[Caty]>
    
}

struct Caty: Decodable {
    let id: String
    let url: String
    let width: Int
    let height: Int
}

// [{"id":"2a4",
// "url":"https://cdn2.thecatapi.com/images/2a4.jpg",
// "width":300,
// "height":400}]
