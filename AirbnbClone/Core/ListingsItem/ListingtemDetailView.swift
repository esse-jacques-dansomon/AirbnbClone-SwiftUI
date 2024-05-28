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
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingItemCarrouselView()
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
                    Text("Dakar - Sénégal")
                        .font(.title2)
                    
                    HStack(alignment: .center){
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width:15, height: 15)
                            .foregroundColor(.yellow)
                           
                        Text("4.89")
                            .font(.caption)
                        Text("22 reviews")
                            .font(.caption)
                            .underline()
                        
                        
                        Spacer()
                    }
                    
                    Text("Liberté 2, Dakar - Sénégal")
                        .font(.caption)
                }
                
                Divider()
                
                HStack{
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Enter villa hoted by Esse Jacques Dans")
                            .font(.headline)
                            .frame(width: 250, alignment: .leading)
                            .fontWeight(.bold)
                    
                        HStack{
                           
                            Text("4 Guests")
                                .font(.caption)
                            Text("2 Bedrooms")
                                .font(.caption)
                            
                            Text("3 Kitchens")
                                .font(.caption)
                            Text("2 Douches")
                                .font(.caption)
                        
                        }.frame(maxWidth: .infinity, alignment: .leading)
                     
                        
                    }
                   
                    
                    Spacer()
                    
                    Image( "profile")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    
                }
                
                Divider()
                
                VStack{
                    ForEach(0 ..< 2) { feature in
                        HStack(spacing: 9){
                            Image(systemName: "medal")
                            VStack (alignment: .leading){
                                Text("Superhost")
                                Text("Appartement entièrement meublé et équipé d'une télévision, d'Internet par câble et wi-fi, d'eau chaude, situé dans un quartier calme, à 250m de la plage")
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
                            ForEach(1..<8) { item in
                                VStack (alignment: .leading){
                                    Image(systemName: "bed.double");
                                    Text("Bedroom \(item)")
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
                        ForEach(1..<8) { item in
                            HStack (alignment: .center, spacing: 15){
                                Image(systemName: "bed.double");
                                Text("Bedroom \(item)")
                            }
                            
                            
                        }
                    }.padding(.vertical, 9)
                    
                }.padding(.vertical)
                
                Divider()
                
                VStack (alignment: .leading) {
                    Text("Where you will be")
                        .font(.headline)
                    
                    Map().frame(height: 200)
                    
                }.padding(.vertical)
                
                Spacer(minLength: 90)
                
        
                
            }
            .padding()
            .frame( alignment: .leading)
            
            Spacer(minLength: 40)
        }
        .ignoresSafeArea()
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack  {
                    
                    VStack (alignment: .leading) {
                        Text("$500")
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
    ListingtemDetailView()
}
