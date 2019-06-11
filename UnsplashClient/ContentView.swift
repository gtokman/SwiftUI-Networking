//
//  ContentView.swift
//  UnsplashClient
//
//  Created by Gary Tokman on 6/9/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @ObjectBinding var store: UnsplashStore
    
    var body: some View {
        Group {
            if store.models.isEmpty {
                LoadingView()
            } else {
                NavigationView {
                    List(store.models, rowContent: Row.init) .navigationBarTitle(Text("Photographers"))
                }
            }
        }.onAppear(perform: store.fetch)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(store: UnsplashStore())
    }
}
#endif

struct Row : View {
    let model: Model
    
    var body: some View {
        return HStack {
            Image(uiImage: model.image)
                .frame(width: 50.0, height: 50.0)
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                Text(model.name)
                Text(model.bio)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(0)
            }
        }
    }
}
