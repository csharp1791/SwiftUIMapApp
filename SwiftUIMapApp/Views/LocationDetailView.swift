//
//  LocationDetailView.swift
//  SwiftUIMapApp
//
//  Created by Cliff Sharp on 6/24/23.
//

import SwiftUI

struct LocationDetailView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity( 0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    desctiptionSection
                    Divider()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
    }
}

extension LocationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var desctiptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Read more on Wikipedia!", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
    }
}
