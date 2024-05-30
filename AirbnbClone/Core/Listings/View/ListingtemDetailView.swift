//
//  ListingtemDetailView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI
import MapKit

struct ListingtemDetailView: View {

    @Environment(\.dismiss) var dismiss;
    var listing : Listing
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longgitude),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingItemCarouselView()
                    .frame(height: 350)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }.padding(32)
                    
                }
            
            }
            
            
            VStack (alignment: .leading) {
                VStack (alignment: .leading,spacing: 8) {
                    Text("\(listing.city)  \(listing.state) - \(listing.type.description) ")
                        .font(.title2)
                    
                    HStack(alignment: .center){
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width:15, height: 15)
                            .foregroundColor(.yellow)
                           
                        Text("\(listing.rating.formatted())")
                            .font(.caption)
                        Text("22 reviews")
                            .font(.caption)
                            .underline()
                        
                        
                        Spacer()
                    }
                    
                    Text(listing.address)
                        .font(.caption)
                }
                
                Divider()
                
                HStack{
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                            .font(.headline)
                            .frame(width: 250, alignment: .leading)
                            .fontWeight(.bold)
                    
                        HStack{
                           
                            Text("\(listing.numberOfGuests) Guests")
                                .font(.caption)
                            Text("\(listing.numberOfBedrooms)  Bedrooms")
                                .font(.caption)
                            
                            Text("\(listing.numberOfBathrooms)  Baths")
                                .font(.caption)
                            Text("\(listing.numberOfBeds)  Beds")
                                .font(.caption)
                        
                        }.frame(maxWidth: .infinity, alignment: .leading)
                     
                        
                    }
                   
                    
                    Spacer()
                    
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    ForEach(listing.features) { feature in
                        HStack(spacing: 9) {
                            Image(systemName: feature.imageName)
                            VStack (alignment: .leading){
                                Text(feature.title)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                
                                Text(feature.subtitle)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                        }.padding(.vertical, 9)
                       
                    }
                }
                
                Divider()
                
                VStack (alignment: .leading) {
                    Text("Where you will sleep")
                        .font(.headline)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<listing.numberOfBedrooms) { item in
                                VStack (alignment: .center){
                                    Image(systemName: "bed.double");
                                    Text("Bedroom \(item + 1)")
                                }.frame(width: 132, height: 100)
                                    .overlay{
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.gray)
                                    }
                                
                            }
                        }
                    }.scrollTargetBehavior(.paging)
                    
                }.padding(.vertical)
                
                Divider()
                
                VStack (alignment: .leading) {
                    Text("What this place offer")
                        .font(.headline)
                    
                    VStack {
                        ForEach(listing.amentities) { item in
                            HStack (alignment: .center, spacing: 30){
                                Image(systemName: item.imageName);
                                Text("\(item.title)")
                                Spacer()
                                
                            }.padding(.vertical, 5)
                            
                            
                        }
                    }.padding(.vertical, 9)
                    
                }.padding(.vertical)
                
                Divider()
                
                VStack (alignment: .leading) {
                    Text("Where you will be")
                        .font(.headline)
                    
                    Map( position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                }.padding(.vertical)
                
                Spacer(minLength: 90)
                
        
                
            }
            .padding()
            .frame( alignment: .leading)
            
            Spacer(minLength: 40)
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack  {
                    
                    VStack (alignment: .leading) {
                        Text("$\(listing.pricePerNigth)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Tobal Before tax")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.subheadline)
                            .underline()
                        
                        
                    }
                    
                        Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                
            }  
            .padding()
            .background(.white)
        }
    }
}

#Preview {
    ListingtemDetailView(listing: DeveloperPreview.shared.mockListings[0])
}
