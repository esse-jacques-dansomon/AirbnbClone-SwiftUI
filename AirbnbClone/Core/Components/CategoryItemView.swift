//
//  CategoryItemView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 29/05/2024.
//

import SwiftUI

struct CategoryItemView: View {
    var icon : String = "building.2";
    var title: String = "Icons"
    var isActive: Bool = false;
    var body: some View {
        VStack (spacing: 8) {
    
                Image(systemName: icon)
                .foregroundStyle( isActive ? .black : .gray)
                Text(title).font(.footnote)
                .foregroundStyle( isActive ? .black : .gray)

        }
    }
}

#Preview {
    CategoryItemView()
}
