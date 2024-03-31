//
//  ListingBedroomsView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingBedroomsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll sleep")
                .font(.headline)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(1..<5) { bedroom in
                        VStack(spacing: 8) {
                            Image(systemName: "bed.double")
                            Text("Bedroom \(bedroom)")
                        }
                        .padding()
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(Color(.systemGray4))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ListingBedroomsView()
}
