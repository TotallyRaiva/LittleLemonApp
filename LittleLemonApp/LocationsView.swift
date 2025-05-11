//
//  LocationsView.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI

struct LocationsView: View {
    
    let locations = [
        "Chicago", "Los Angeles", "New York", "Miami", "Dallas"
    ]
    
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
                List(locations, id: \.self) { location in
                    NavigationLink(destination: ReservationFormView(location: location)) {
                        Text(location)
                            .padding(.vertical, 8)
                    }
                }
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
