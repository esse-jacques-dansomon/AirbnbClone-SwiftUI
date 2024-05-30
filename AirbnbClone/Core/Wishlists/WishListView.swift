//
//  WishListView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 29/05/2024.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NotLongInView(
            page: NotLongPageItem(
                title: "Wishlists",
                subTitle: "Log in to view your wistlists",
                message: "You can create, view, or edit wishlists once you've logged in"
            )
        )
    }
}

#Preview {
    WishListView()
}
