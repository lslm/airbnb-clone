//
//  GuestsSelectionView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct GuestsSelectionView: View {
    @Binding var selectedOption: DestinationSearchOptions
    @State private var numberOfGuests = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            if selectedOption == .guests {
                
                Text("Who's coming?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Stepper("\(numberOfGuests) adults", value: $numberOfGuests)
                
                
            } else {
                CollapsedSearchView(title: "Who", description: "Add guests")
                    .background(Color(.systemGray6))
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selectedOption = .guests
                        }
                    }
            }
        }
        .padding()
        .frame(height: selectedOption == .guests ? 120 : 60)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 12)
    }
}

#Preview {
    VStack {
        GuestsSelectionView(selectedOption: .constant(.guests))
        GuestsSelectionView(selectedOption: .constant(.location))
    }
}
