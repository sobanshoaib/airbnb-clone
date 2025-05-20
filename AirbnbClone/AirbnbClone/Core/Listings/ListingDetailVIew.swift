//
//  ListingDetailVIew.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-14.
//

import SwiftUI

struct ListingDetailVIew: View {
//    var images = [
//        "listing1",
//        "listing2",
//        "listing3",
//        "listing4",
//    ]
//    
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
                .frame(height: 320)
            HStack {
                VStack (alignment: .leading) {
                    Text("Miami Villa")
                        .bold()
                        .font(.title    )
                    Text("4.86 - 28 reviews")
                    Text("Miami, Florida")
                }
                .padding(.horizontal)
                Spacer()
            }
            Divider()
            
            HStack {
                VStack (alignment: .leading) {
                    VStack (alignment: .leading){
                        Text("Entire villa hosted by")
                        Text("Bugs Bunny")
                    }
                    .bold()
                    Text("4 guests - 4 bedrooms - 4 beds - 3 baths")
                        .font(.caption2)
                }
                .padding()
                Spacer()
                Image("bugsbunny")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 65)
                    .clipShape(Circle())
                    .padding()
            }
            Divider()
            
            VStack {
                HStack {
                    
                }
            }
            
        }
    }
}

#Preview {
    ListingDetailVIew()
}
