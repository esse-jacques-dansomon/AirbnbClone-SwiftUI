//
//  InboxView.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NotLongInView(
            page: NotLongPageItem(
                title: "Inbox",
                subTitle: "Log in to see messages",
                message: "Once you login, you'll find messages from hosts here."
            )
        )
    }
}

#Preview {
    InboxView()
}
