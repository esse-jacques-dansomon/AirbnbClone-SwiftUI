//
//  NotLongInView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import SwiftUI

struct NotLongPageItem {
    var title : String;
    var subTitle: String;
    var message : String;
}

struct NotLongInView: View {
    var page :  NotLongPageItem
    var body: some View {
        ScrollView {
    
            VStack (alignment: .leading , spacing: 40){
                Text(page.title)
                    .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading , spacing: 10) {
                    Text(page.subTitle)
                        .font(.title2)
                        .fontWeight(.semibold)
                        
                    Text(page.message)
                        .font(.title3)
                        .foregroundStyle(.gray)
                    
                    Button {
                        
                    } label: {
                        Text("Log in")
                            .font(.title3)
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .frame(width: 140, height: 60)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                        
                        Spacer()
                            
                    }.padding(.top, 60)
                       
                }.padding()
                
             
            }.padding()
            
       
        }
    }
}

#Preview {
    NotLongInView(
        page: NotLongPageItem(
            title: "Profile",
            subTitle: "Log in to view your wistlists",
            message: "You can create, view, or edit wishlists once you've logged in"
        )
    )
}
