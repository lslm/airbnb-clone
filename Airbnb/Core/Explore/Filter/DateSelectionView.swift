//
//  DateSelectionView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct DateSelectionView: View {
    @State private var from = Date()
    @State private var to = Date()
    
    @Binding var selectedOption: DestinationSearchOptions

    
    var body: some View {
        VStack(alignment: .leading) {
            if selectedOption == .dates {
                
                Text("When's your trip?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                DatePicker("From", selection: $from, displayedComponents: .date)
                Divider()
                DatePicker("To", selection: $to, displayedComponents: .date)
                
            } else {
                CollapsedSearchView(title: "When", description: "Add dates")
                    .background(Color(.systemGray6))
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selectedOption = .dates
                        }
                    }
            }
        }
        .padding()
        .frame(height: selectedOption == .dates ? 160 : 60)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 12)
    }
}

#Preview {
    VStack {
        DateSelectionView(selectedOption: .constant(.dates))
        DateSelectionView(selectedOption: .constant(.location))
    }
}
