//
//  TripsViewView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import SwiftUI

struct TripsView: View {
    var body: some View {
        NotLongInView(
            page: NotLongPageItem(
                title: "Trips",
                subTitle: "No trips yet",
                message: "When your're ready to plamn ypour next trip, we here to help"
            )
        )
    }
}

#Preview {
    TripsView()
}
