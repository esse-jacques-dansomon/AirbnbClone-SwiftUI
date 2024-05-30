//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var listing: Listing
    var body: some View {
        VStack(spacing: 10) {
            //Images
            ListingItemCarouselView()
                    .frame(height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //Listings details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading) {
                    Text(listing.city)
                        .fontWeight(.semibold)
                    Text(listing.address)
                        .foregroundStyle(.black)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.black)
                    HStack(spacing: 4){
                        Text("$\(listing.pricePerNigth)").fontWeight(.semibold)
                        Text("night")
                    }
                }
               
                Spacer()
                
                //rating
                HStack{
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text("\(listing.rating.formatted())")

                }
                
            }.font(.footnote)
        }
    }
}

#Preview {
    ListingItemView( listing: DeveloperPreview.shared.mockListings[0])
}
