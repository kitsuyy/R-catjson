//
//  Xkcd.swift
//  R-catjson
//
//  Created by Kirill Lozovoi on 11/6/22.
//

import Foundation

struct Xkcd: Decodable {
    let month: String
    let num: Int
    let year: String
    let news: String
    let safe_title: String
    let transcript: String
    let alt: String
    let img: String
    let title: String
    let day: String
}

//{"month": "11", "num": 2694, "link": "", "year": "2022", "news": "", "safe_title": "K\u00f6nigsberg", "transcript": "", "alt": "At first I thought I would need some gold or something to pay him, but then I realized that it was the 18th century and I could just bring a roll of aluminum foil.", "img": "https://imgs.xkcd.com/comics/konigsberg.png", "title": "K\u00f6nigsberg", "day": "4"}
//
//
