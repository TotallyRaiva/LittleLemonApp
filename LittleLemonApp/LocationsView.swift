//
//  LocationsView.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI

struct LocationsView: View {
    var body: some View {
        VStack {
            LittleLemonLogo() // ✅ Logo at the top
                .padding(.top, 50)

            // Placeholder for "Select a location"
            EmptyView()
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)

            // Placeholder for locations list
            NavigationView {
                EmptyView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        }
        .padding()
    }
}

#Preview {
    LocationsView()
}
