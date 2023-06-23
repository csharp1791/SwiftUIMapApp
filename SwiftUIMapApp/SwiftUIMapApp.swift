//
//  SwiftUIMapApp.swift
//  SwiftUIMapApp
//
//  Created by Cliff Sharp on 6/22/23.
//

import SwiftUI

@main
struct SwiftUIMapApp: App {
    
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(viewModel)
        }
    }
}
