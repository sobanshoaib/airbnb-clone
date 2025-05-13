//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-11.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 50) {
                    ForEach (0 ... 10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 450)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }

                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
