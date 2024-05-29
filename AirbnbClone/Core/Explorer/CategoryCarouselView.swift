//
//  CategoryCarrousselView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 29/05/2024.
//

import SwiftUI

struct Category: Identifiable, Hashable {
    let id =  UUID()
    let iconName: String
    let title: String
}

let categories: [Category] = [
    Category(iconName: "house", title: "House"),
    Category(iconName: "building.2", title: "Apartment"),
    Category(iconName: "leaf", title: "Eco-friendly"),
    Category(iconName: "tent", title: "Camping"),
    Category(iconName: "house.fill", title: "Villa"),
    Category(iconName: "bed.double.fill", title: "Hotel"),
    Category(iconName: "tent.fill", title: "Cabin"),
    Category(iconName: "flame", title: "Chalet"),
    Category(iconName: "airplane", title: "Private Jet"),
    Category(iconName: "tram.fill", title: "Boat"),
    Category(iconName: "pawprint.fill", title: "Pet-friendly"),
    Category(iconName: "wifi", title: "Free Wi-Fi"),
    Category(iconName: "star.fill", title: "Starred Listing"),
    Category(iconName: "bicycle", title: "Bike Rental"),
    Category(iconName: "figure.pool.swim", title: "Swimming Pool"),
    Category(iconName: "globe", title: "International")
]

struct CategoryCarouselView: View {
    @State private var selectedCategory: Category?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            LazyHStack (spacing: 30) {
                ForEach(categories, id: \.self) { category in
                    CategoryItemView(
                        icon: category.iconName,
                        title: category.title,
                        isActive: category == selectedCategory
                    )
                    // Makes the entire row tappable
                        .onTapGesture {
                            selectedCategory = category
                        }
                        
                }
            }.frame(height: 30)
            .padding()
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .scrollPosition(id: $selectedCategory)    
    }
}



#Preview {
    CategoryCarouselView()
}
