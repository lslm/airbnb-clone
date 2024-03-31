//
//  ListingImagesCarrousel.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingImagesCarrousel: View {
    let images: [String]
    
    var body: some View {
        TabView() {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImagesCarrousel(
        images: ["listing-1",
                 "listing-2",
                 "listing-3",
                 "listing-4"]
    )
}
