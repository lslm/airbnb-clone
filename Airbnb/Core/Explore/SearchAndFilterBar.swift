//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.secondary)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(.thinMaterial)
        .clipShape(Capsule())
    }
}

#Preview {
    ZStack {
        Color(.systemGray3)
        SearchAndFilterBar()
    }
    
}
