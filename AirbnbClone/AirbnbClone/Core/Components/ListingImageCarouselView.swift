//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-20.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "listing4",
    ]
    
    var body: some View {

        TabView {
            ForEach (images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }

        .tabViewStyle(.page)

    }
}

#Preview {
    ListingImageCarouselView()
}
