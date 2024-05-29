//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 29/05/2024.
//

import SwiftUI

struct SettingsItem: Identifiable, Hashable {
    let id = UUID()
    let iconName: String
    let title: String
}

// Define your array of settings items
let paramsSettings: [SettingsItem] = [
    SettingsItem(iconName: "gear", title: "Settings"),
    SettingsItem(iconName: "accessibility", title: "Accessibility"),
    SettingsItem(iconName: "questionmark.circle", title: "Get Help")
]


struct ProfileView: View {

    var body: some View {
    
        ScrollView {
            VStack (alignment: .leading, spacing: 15) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Log in to start planning your next trip.")
                    .foregroundStyle(.gray)
                    .padding(.bottom)
                
                Button {
                    
                } label: {
                    Text("Log in")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                }.padding(.vertical)
                
                HStack{
                    Text("Don't have an account")
                        .foregroundStyle(.gray)
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .foregroundStyle(.gray)
                            .underline()
                    }
                }
            }
            
            HStack (alignment: .top, spacing: 20){
                VStack(alignment: .leading, spacing: 10) {
                    Text("Airbnb your place")
                        .font(.headline)
                        .foregroundStyle(.black)
                    Text("It is simple to get set up and start earning")
                        .foregroundStyle(.gray)
                }.padding()
              
                
                Image("listing-0")
                    .resizable()
                    .frame(width: 100, height: 90)
                    .padding()
                
                
            }.foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 130)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 10)
                .padding()
            
            
            
            VStack {
                ForEach(paramsSettings,id: \.self ){ item in
                    Button{
                        
                    }label: {
                        VStack {
                            HStack {
                                HStack {
                                    Image(systemName: item.iconName)
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundStyle(.gray)
                                        .padding(.trailing, 8)
                                    
                                    Text(item.title)
                                        .font(.title3)
                                        .foregroundStyle(.gray)
                                }
                                Spacer()
                            
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                                   
                             
                            }
                            .padding(.vertical, 7)
                            Divider()
                        }
                    }
                  
                }
            }.padding()
            
            Spacer()
        }
        
        

    }
}

#Preview {
    ProfileView()
}
