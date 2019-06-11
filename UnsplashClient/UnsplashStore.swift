//
//  UnsplashStore.swift
//  UnsplashClient
//
//  Created by Gary Tokman on 6/9/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import SwiftUI
import Combine

class UnsplashStore: BindableObject {
    static let url = URL(string: "https://api.unsplash.com/photos?client_id=YOUR_API_KEY")!
    var models: [Model] = [] {
        didSet {
            didChange.send(())
        }
    }
    var didChange = PassthroughSubject<Void, Never>()
    
    func fetch() {
        URLSession.shared.dataTask(with: UnsplashStore.url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            guard let models = try? Unsplash(data: data) else {
                return
            }
            let viewModels = models
                .map { $0.user }
                .compactMap(Model.init)
            DispatchQueue.main.async {
                self.models = viewModels
            }
        }.resume()
    }
}
