//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-11.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "listing4",
    ]
    var body: some View {
        VStack {
            TabView {
                ForEach (images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .tabViewStyle(.page)
                
            
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    Text("Miami, Florida")
                        .bold()
                        .foregroundStyle(.black)
                    Text("12 miles away")
                        .foregroundColor(.gray)
                    Text("Nov 3")
                        .foregroundColor(.gray)
                    HStack {
                        Text("$590")
                            .bold()
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                HStack (spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.99")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
