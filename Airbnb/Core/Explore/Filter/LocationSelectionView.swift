//
//  LocationSelectionView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct LocationSelectionView: View {
    @State private var destination = ""
    @Binding var selectedOption: DestinationSearchOptions
    
    var body: some View {
        VStack(alignment: .leading) {
            if selectedOption == .location {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(.systemGray4))
                }
            } else {
                CollapsedSearchView(title: "Where", description: "Add location")
                    .background(Color(.systemGray6))
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selectedOption = .location
                        }
                    }
            }
        }
        .padding()
        .frame(height: selectedOption == .location ? 120 : 60)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 12)
    }
}

#Preview {
    VStack {
        LocationSelectionView(selectedOption: .constant(.location))
        LocationSelectionView(selectedOption: .constant(.guests))
    }
}
