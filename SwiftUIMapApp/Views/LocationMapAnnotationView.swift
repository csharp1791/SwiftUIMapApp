//
//  LocationMapAnnotationView.swift
//  SwiftUIMapApp
//
//  Created by Cliff Sharp on 6/24/23.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapAnnotationView()
    }
}
