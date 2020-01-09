//
//  UnsplashStore.swift
//  UnsplashClient
//
//  Created by Gary Tokman on 6/9/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import SwiftUI
import Combine

class UnsplashStore: ObservableObject {
    #error("Add an Access Key from unsplash website: https://unsplash.com/oauth/applications")
    static let apiKey = ""
    static let url = URL(string: "https://api.unsplash.com/photos?client_id=\(UnsplashStore.apiKey)")!
    var models: [Model] = [] {
        didSet {
            print("sent: \(models)")
            objectWillChange.send(())
        }
    }
    var objectWillChange = PassthroughSubject<Void, Never>()

    func fetch() {
        URLSession.shared.dataTask(with: UnsplashStore.url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            do {
                let models = try Unsplash(data: data)
                let viewModels = models
                    .compactMap { $0.user }
                    .compactMap(Model.init)
                DispatchQueue.main.async {
                    self.models = viewModels
                }
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}
