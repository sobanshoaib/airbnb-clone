//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-11.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack (spacing: 30) {
                        ForEach (0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 450)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }

                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailVIew()
                }

            }
        }
    }
}

#Preview {
    ExploreView()
}
