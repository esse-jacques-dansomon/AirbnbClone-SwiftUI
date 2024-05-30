//
//  SplashView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import SwiftUI

struct SplashView: View {
    @Binding var isActive: Bool
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
            
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
        .ignoresSafeArea()
        .onAppear {
                 DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                     withAnimation {
                         self.isActive = false
                     }
                 }
        }
    }
}


#Preview {
    SplashView(isActive: .constant(true))
}
