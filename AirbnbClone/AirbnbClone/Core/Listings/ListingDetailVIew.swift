//
//  ListingDetailVIew.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-14.
//

import SwiftUI
import MapKit

struct ListingDetailVIew: View {
//    var images = [
//        "listing1",
//        "listing2",
//        "listing3",
//        "listing4",
//    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack (alignment: .topLeading){
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }

            VStack (alignment: .leading) {
                Text("Miami Villa")
                    .bold()
                    .font(.title    )
                Text("4.86 - 28 reviews")
                Text("Miami, Florida")
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
             
            Spacer()
            
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
            
            VStack (alignment: .leading, spacing: 16){
                ForEach(0..<2, id: \.self) {feature in
                    HStack (spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack (alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are experienced, highly rated hosts")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                    
                }
            }
            .padding()
            
            Divider()
            
            VStack {
                HStack {
                    Text("Where you'll sleep")
                        .bold()
                    Spacer()
                }
                .padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<8, id: \.self) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("Bedroom 1")
                                    .font(.caption)
                            }
                            .frame(width: 100, height: 100, alignment: .center)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                    .padding()
                }
                .scrollTargetBehavior(.paging)
            
            }
            
            Divider()
            
            HStack {
                VStack (alignment: .leading, spacing: 10){
                    Text("What this place offers: ")
                        .bold()
                    VStack (alignment: .leading, spacing: 10) {
                        ForEach(0..<5, id:\.self) {item in
                            HStack {
                                Image(systemName: "wifi")
                                Text("Wifi")
                            }
                        }

                    }
                }
                .padding()
                Spacer()
            }
            
            Divider()
            
            VStack (alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack (spacing: 50){
                    VStack (alignment: .leading){
                        Text("$500")
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                        Text("Oct 15 - 20")
                            .underline()
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal)
                
            }
            .background(.white)
        }        
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ListingDetailVIew()
}
