//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import Foundation


class ExploreService {
    func fetchLintings() async throws ->  [Listing] {
        return DeveloperPreview.shared.mockListings
    }
}
