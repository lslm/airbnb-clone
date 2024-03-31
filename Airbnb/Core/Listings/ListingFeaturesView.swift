//
//  ListingFeaturesView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingFeaturesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 12) {
                Image(systemName: "medal")
                    .foregroundColor(.secondary )
                
                VStack(alignment: .leading) {
                    Text("Self check-in")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Check yourself in with the keypad")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            
            HStack(spacing: 12) {
                Image(systemName: "medal")
                    .foregroundColor(.secondary )
                
                VStack(alignment: .leading) {
                    Text("Superhost")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ListingFeaturesView()
}
