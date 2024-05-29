//
//  MainTabBar.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 29/05/2024.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            ExplorerView()
                .tabItem { Label ("Explore", systemImage: "magnifyingglass") }
            
            WishListView()
                .tabItem { Label ("Withlist", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label ("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabBarView()
}
