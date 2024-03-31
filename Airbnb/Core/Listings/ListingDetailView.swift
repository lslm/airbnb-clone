//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ListingDetailView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ListingImagesCarrousel(images: images)
                .frame(height: 320)
            
            Group {
                ListingTitleView()
                    .padding(.bottom, 8)
                
                Divider()
                
                ListingSummaryView()
                    .padding(.vertical, 8)
                
                Divider()
                
                ListingFeaturesView()
                    .padding(.vertical, 8)
                
                Divider()
                
                ListingBedroomsView()
                    .padding(.vertical, 8)
                
                Divider()
                
                AmenitiesSectionView()
                    .padding(.vertical, 8)
                
                if #available(iOS 17.0, *) {
                    Divider()
                    
                    MapSectionView()
                        .padding(.vertical, 8)
                }
                
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(edges: .top)
        .safeAreaInset(edge: .bottom) {
            ReserveView()
        }
        .safeAreaInset(edge: .top) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.primary)
                        .background {
                            Circle()
                                .fill(.thinMaterial)
                                .frame(width: 32, height: 32)
                        }
                        .padding(.leading, 32)
                }
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
        }
    }
}

#Preview {
    ListingDetailView()
}
