//
//  ViewController.swift
//  R-catjson
//
//  Created by Kirill Lozovoi on 11/6/22.
//

import UIKit

enum Link: String {
    case catsUrl = "https://api.thecatapi.com/v1/images/search"
    case catBUrl = "https://api.catboys.com"
    case xkcdUrl = "https://xkcd.com/info.0.json"
}

final class ViewController: UIViewController {

    @IBOutlet var catImageView: UIImageView!
    
    @IBAction func startButtonDidTapped() {
        fetchList()
    }
    
    private func fetchList() {
        guard let url = URL(string: Link.xkcdUrl.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let info = try decoder.decode(Xkcd.self, from: data)
                print(info)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}



