//
//  WebImageExample.swift
//  WebImageDemo
//
//  Created by Jiaming Guo on 2023-01-23.
//

import SwiftUI

struct WebImageExample: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct WebImageExample_Previews: PreviewProvider {
    static var previews: some View {
        WebImageExample()
    }
}
