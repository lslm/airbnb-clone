//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        VStack {
            ListingImagesCarrousel(images: images)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.bold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.secondary)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.secondary)
                    
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        
        
    }
}

#Preview {
    ListingItemView()
}
