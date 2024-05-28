//
//  Explorer.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ExplorerView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                
                SearchAndFilterBarView()
                
                LazyVStack (spacing: 32){
            
                    ForEach( 0 ... 10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 340)
                    }
                } .padding()
            }
        }
    }
}

#Preview {
    ExplorerView()
}
