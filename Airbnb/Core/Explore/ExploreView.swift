//
//  ExploreView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
            .overlay(alignment: .top) {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 200)
                    .mask {
                        VStack(spacing: 0) {
                            LinearGradient(
                                colors: [Color.black.opacity(1),
                                         Color.black.opacity(0.924),
                                         Color.black.opacity(0)],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            .frame(height: 200)
                            .ignoresSafeArea(edges: .top)
                        }
                    }
                    .allowsHitTesting(false)
            }
            
            .safeAreaInset(edge: .top) {
                Button {
                    withAnimation(.bouncy) {
                        showDestinationSearchView.toggle()
                    }
                } label: {
                    SearchAndFilterBar()
                }
                .buttonStyle(PlainButtonStyle())
            }
            .overlay {
                if showDestinationSearchView {
                    DestinationSearchView(show: $showDestinationSearchView)
                }
            }
        }
    }
}
 
#Preview {
    ExploreView()
}
