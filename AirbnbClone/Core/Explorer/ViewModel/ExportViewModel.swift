//
//  ExportViewModel.swift
//  AirbnbClone
//
//  Created by Esse Jacques  on 30/05/2024.
//

import Foundation


class ExportViewModel : ObservableObject {
    @Published  var listings = [Listing]()
    private let service: ExploreService
    

    init (service : ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async   {
        do {
            self.listings = try await service.fetchLintings()
        }catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
