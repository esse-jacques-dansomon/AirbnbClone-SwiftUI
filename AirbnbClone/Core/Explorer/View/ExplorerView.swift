//
//  Explorer.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ExplorerView: View {
    
    @State private var showDestinationSearchView = false;
    @StateObject var viewModel = ExportViewModel(service: ExploreService());
    
    var body: some View {
        NavigationStack {
            
            if(showDestinationSearchView)  {
                DestinationSearchView(show: $showDestinationSearchView, viewModel:  viewModel)
            } else {
                VStack {
                    SearchAndFilterBarView(location: $viewModel.location)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    CategoryCarouselView()
                    ScrollView{
                        
                        LazyVStack (spacing: 32){
                    
                            ForEach( viewModel.listings) { listing in
                                NavigationLink(value: listing ){
                                    ListingItemView(listing: listing, canBeShare: true)
                                        .frame(height: 420)
                                }
                             
                            }
                        } .padding()
                    }
                    .navigationDestination(for: Listing.self) { listing in
                        ListingtemDetailView(listing: listing)
                            .navigationBarBackButtonHidden()
                        
                }
                }
            }
            
        }
    }
}

#Preview {
    ExplorerView()
}
