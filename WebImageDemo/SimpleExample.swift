//
//  SimpleExample.swift
//  WebImageDemo
//
//  Created by Jiaming Guo on 2023-01-23.
//

import SwiftUI

struct SimpleExample: View {
    @State private var data: Data?
    
    let url: URL?
    
    private var image: UIImage? {
        if let data = self.data { return UIImage(data: data) }
        return nil
    }
    
    func load() async {
        do {
            self.data = try Data(contentsOf: url!)
        } catch {
            return
        }
    }
    
    var body: some View {
        let image = self.image
        return Group {
            if image != nil {
                Image(uiImage: image!)
                    .resizable()
                    .scaledToFill()
            } else {
                Color.gray
            }
        }
        .frame(height: 600)
        .clipped()
        .onAppear {
            if self.data == nil {
                Task {
                    await load()
                }
            }
        }
    }
}
