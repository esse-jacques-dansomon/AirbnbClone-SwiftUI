//
//  ContentView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 28/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isSplashViewActive = true
    var body: some View {
        if (isSplashViewActive) {
           SplashView(isActive: $isSplashViewActive)
        }else{
            MainTabBarView()
        }
    }
}

#Preview {
    ContentView()
}
