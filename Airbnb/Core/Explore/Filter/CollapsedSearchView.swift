//
//  CollapsedSearchView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct CollapsedSearchView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.secondary)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        .shadow(radius: 12)
    }
}
#Preview {
    CollapsedSearchView(title: "Where", description: "Add location")
}
