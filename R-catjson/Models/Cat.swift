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
    let width: String
    let height: String
}
