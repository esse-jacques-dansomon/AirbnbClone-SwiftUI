//
//  Explorer.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ExplorerView: View {
    
    @State private var showDestinationSearchView = false;
    
    var body: some View {
        NavigationStack {
            
            if(showDestinationSearchView)  {
              DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView{
                    
                    SearchAndFilterBarView()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack (spacing: 32){
                
                        ForEach( 0 ... 10, id: \.self) { listing in
                            NavigationLink(
                                value: listing ){
                                ListingItemView()
                                    .frame(height: 420)
                            }
                         
                        }
                    } .padding()
                }.navigationDestination(for: Int.self) { listing in
                    ListingtemDetailView()
                        .navigationBarBackButtonHidden()
                    
                }
            }
            
        }
    }
}

#Preview {
    ExplorerView()
}
