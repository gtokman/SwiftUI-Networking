//
//  Models.swift
//  UnsplashClient
//
//  Created by Gary Tokman on 6/9/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import SwiftUI

struct Model: Identifiable {
    let id: String
    let name: String
    let bio: String
    var image: UIImage
    
    init(user: User) {
        self.id = user.id
        self.name = user.name ?? "No name"
        self.bio = user.bio ?? "No bio"
        if let url = URL(string: user.profileImage?.medium ?? "") {
            let data = try! Data(contentsOf: url)
            self.image = UIImage(data: data) ?? UIImage(imageLiteralResourceName: "Image")
        } else {
            self.image = UIImage(imageLiteralResourceName: "Image")
        }
    }
}
