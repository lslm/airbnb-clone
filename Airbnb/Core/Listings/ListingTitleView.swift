//
//  ListingTitleView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingTitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Miami Villa")
                .font(.title)
                .fontWeight(.semibold)
            
            VStack(alignment: .leading) {
                HStack(spacing: 8) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                    Text(" - ")
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                Text("Miami, Florida")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ListingTitleView()
}
