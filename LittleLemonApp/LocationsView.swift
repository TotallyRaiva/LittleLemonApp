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
            LittleLemonLogo()
                .padding(.top, 50)

            Text("Select a location")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)

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
