//
//  SearchAndFilterBarView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct SearchAndFilterBarView: View {
    @Binding var location : String
    var body: some View {
        HStack{
           Image(systemName: "magnifyingglass")
            
            VStack (alignment: .leading) {
                Text( !location.isEmpty ? location : "Where to?")
                    .font(.footnote)
                    .fontWeight(.bold)
                    
                Text(" \(location.isEmpty ? "Anywhere" : location) - Any Week - And guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button  {
               
            } label: {
               Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }

        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
            
        }.padding(.horizontal)
    }
}

#Preview {
    SearchAndFilterBarView(location: .constant("Dakar"))
}
