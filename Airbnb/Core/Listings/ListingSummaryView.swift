//
//  ListingSummaryView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingSummaryView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Group {
                    Text("Entire villa hosted by")
                    Text("John Smith")
                }
                .fontWeight(.semibold)
                
                HStack(spacing: 2) {
                    Text("4 guest -")
                    Text("4 bedrooms -")
                    Text("4 bed -")
                    Text("3 baths ")
                }
                .font(.caption)
                .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ListingSummaryView()
}
