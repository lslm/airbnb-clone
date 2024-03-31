//
//  MapSectionView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI
import MapKit

@available(iOS 17.0, *)
struct MapSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            
        }
    }
}

#Preview {
    if #available(iOS 17.0, *) {
        MapSectionView()
    } else {
        Text("Available only on iOS 17")
    }
}
