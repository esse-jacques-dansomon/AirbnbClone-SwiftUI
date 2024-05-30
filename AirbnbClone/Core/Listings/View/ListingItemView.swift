//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var listing: Listing
    var canBeShare = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 10) {
                //Images
                ListingItemCarouselView()
                        .frame(height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                
                //Listings details
                HStack(alignment: .top){
                    //details
                    VStack(alignment: .leading,spacing: 7) {
//                        Text("\(listing.city) \(listing.address)")
//                            .font(.subheadline)
//                            .fontWeight(.semibold)
//                            .foregroundStyle(.black)   
                        Text(listing.title)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("Hosted by \(listing.ownerName) - \(listing.city) ")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        HStack(spacing: 4){
                            Text("$\(listing.pricePerNigth)").fontWeight(.semibold)
                            Text("Night")
                                
                        }.foregroundColor(.black)
                    }
                   
                    Spacer()
                    
                    //rating
                    HStack{
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                        Text("\(listing.rating.formatted())")
                            .foregroundStyle(.black)

                    }
                    
                }.font(.footnote)
            }
            
            if(canBeShare) {
                Button{
                    
                }label: {
                    Image(systemName: "square.and.arrow.up.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35,height: 35)
                        .foregroundColor(.white)
                        .padding()
                }
            }
       
        }
    }
}

#Preview {
    ListingItemView( listing: DeveloperPreview.shared.mockListings[0])
}
