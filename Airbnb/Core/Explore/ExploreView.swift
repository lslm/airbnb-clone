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
