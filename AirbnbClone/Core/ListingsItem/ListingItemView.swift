//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    
    var body: some View {
        VStack(spacing: 10) {
            //Images
            ListingItemCarrouselView()
                    .frame(height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //Listings details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading) {
                    Text("Point E, Dakar")
                        .fontWeight(.semibold)
                    Text("Lib 271 Rue")
                        .foregroundStyle(.black)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.black)
                    HStack(spacing: 4){
                        Text("$579").fontWeight(.semibold)
                        Text("night")
                    }
                }
               
                Spacer()
                
                //rating
                HStack{
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text("4.89")
                }
                
                
                
                
            }.font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
