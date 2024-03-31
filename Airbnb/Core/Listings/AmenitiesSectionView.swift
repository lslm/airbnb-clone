//
//  AmenitiesSectionView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct AmenitiesSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            VStack(spacing: 16) {
                HStack {
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                        .font(.footnote)
                    Spacer()
                }
                HStack {
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                        .font(.footnote)
                    Spacer()
                }
                HStack {
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                        .font(.footnote)
                    Spacer()
                }
                HStack {
                    Image(systemName: "tv")
                    Text("Wi-Fi")
                        .font(.footnote)
                    Spacer()
                }
            }
            .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    AmenitiesSectionView()
}
