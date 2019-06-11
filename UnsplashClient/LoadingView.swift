//
//  LoadingView.swift
//  UnsplashClient
//
//  Created by Gary Tokman on 6/9/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import SwiftUI

struct LoadingView: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView
    
    func makeUIView(context: UIViewRepresentableContext<LoadingView>) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<LoadingView>) {
        // Todo
    }
}

#if DEBUG
struct LoadingView_Previews : PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
#endif
