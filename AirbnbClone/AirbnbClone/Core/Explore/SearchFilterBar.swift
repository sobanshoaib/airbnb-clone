//
//  SearchFilterBar.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-13.
//

import SwiftUI

struct SearchFilterBar: View {
    var body: some View {
        HStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                
                VStack (alignment: .leading) {
                    Text("Where to?")
                        .bold()
                    
                    Text("Any Week - Any Time")
                        .foregroundStyle(.gray)
                }
            }
            Spacer()
            
            Button (action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
        
    }
}

#Preview {
    SearchFilterBar()
}



