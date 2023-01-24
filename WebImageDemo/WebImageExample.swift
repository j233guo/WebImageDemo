//
//  WebImageExample.swift
//  WebImageDemo
//
//  Created by Jiaming Guo on 2023-01-23.
//

import SDWebImageSwiftUI
import SwiftUI

struct WebImageExample: View {
    let url: URL?
    
    var body: some View {
        WebImage(url: url)
            .placeholder { Color.gray }
            .resizable()
            .onSuccess(perform: { _, _, _ in
                print("Success")
                // Clear cache
                SDWebImageManager.shared.imageCache.clear?(with: .all)
            })
            .onFailure(perform: { _ in
                print("Failure")
            })
            .scaledToFill()
            .frame(height: 600)
            .clipped()
    }
}
