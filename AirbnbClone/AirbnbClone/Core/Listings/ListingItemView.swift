//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-11.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 371, height: 371)
                .cornerRadius(15)
            
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    Text("Miami, Florida")
                        .bold()
                    Text("12 miles away")
                        .foregroundColor(.gray)
                    Text("Nov 3")
                        .foregroundColor(.gray)
                    HStack {
                        Text("$590")
                            .bold()
                        Text("night")
                    }
                }
                Spacer()
                VStack {
                    Text("4.99")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
