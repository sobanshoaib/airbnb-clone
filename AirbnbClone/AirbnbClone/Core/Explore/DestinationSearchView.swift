//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Soban Shoaib on 2025-05-28.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                
            }
            .padding( )
            
            
            
            
            
            //destination selection
            VStack (alignment: .leading){
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search destination", text: $destination)
                    }
                    .frame(height: 45)
                    .padding(.horizontal)
                    .foregroundStyle(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    }
                } else {
                    CollapsedView(title: "Where", description: "Add destination")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .shadow(radius: 5))
            .padding()
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            
            
            //date selection
            VStack (alignment: .leading){
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.title)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 180 : 64)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .shadow(radius: 5))
            .padding()
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            
            
            //guest selection
            VStack (alignment: .leading){
                if selectedOption == .guests {
                    Text("When's your trip?")
                        .font(.title)
                        .fontWeight(.semibold)
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else {return}
                        numGuests -= 1
                    }
  
                } else {
                    CollapsedView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .shadow(radius: 5))
            .padding()
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            Spacer()
        }
        
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}


struct CollapsedView: View {
    let title: String
    let description: String
    var body: some View {
        VStack{
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(
//            RoundedRectangle(cornerRadius: 12)
//                .fill(Color.white)
//                .shadow(radius: 5))
//        .padding()
    }
}
