//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4",
    ]
    
    
    var body: some View {
        VStack(spacing: 10) {
            //Images
                TabView {
                    ForEach(images, id: \.self ){ image in
                        Image(image)
                            .resizable()
                            .scaledToFit()
                        
                    }
                }
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
                
            
            
            //Listings details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading) {
                    Text("Point E, Dakar").fontWeight(.semibold)
                    Text("Lib 271 Rue")
                    Text("Nov 3 - 10")
                    HStack(spacing: 4){
                        Text("$579").fontWeight(.semibold)
    
                        Text("night")
                    }
                }
               
                Spacer()
                
                //rating
                HStack{
                    Image(systemName: "star.fill")
                    Text("4.89")
                }
                
                
                
                
            }.font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
