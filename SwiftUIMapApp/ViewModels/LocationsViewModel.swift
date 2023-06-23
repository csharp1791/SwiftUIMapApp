//
//  LocationsViewModel.swift
//  SwiftUIMapApp
//
//  Created by Cliff Sharp on 6/23/23.
//

import Foundation

final class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
