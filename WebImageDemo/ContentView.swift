//
//  ContentView.swift
//  WebImageDemo
//
//  Created by Jiaming Guo on 2023-01-23.
//

import SwiftUI

private let url = URL(string: "https://raw.githubusercontent.com/j233guo/PostWeibo/main/PostWeibo/Resources/006PdkDogy1gap6ngj12ej30u011itf7.jpg")

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Simple") {
                    SimpleExample(url: url)
                }
                NavigationLink("Web Image") {
                    WebImageExample(url: url)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
