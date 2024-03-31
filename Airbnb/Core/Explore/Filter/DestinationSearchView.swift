//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    
    @State private var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundColor(.primary)
            }
            
            LocationSelectionView(selectedOption: $selectedOption)
            
            DateSelectionView(selectedOption: $selectedOption)
            
            GuestsSelectionView(selectedOption: $selectedOption)
            
            Spacer()
        }
        .padding()
        .frame(height: .infinity)
        .background(.thinMaterial)
    }
}

#Preview {
    DestinationSearchView(show: .constant(true))
}
