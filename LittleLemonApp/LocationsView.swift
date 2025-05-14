//
//  LocationsView.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.top, 50)

            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)

            NavigationView {
                List(model.restaurants) { restaurant in
                    NavigationLink(
                        destination: ReservationFormView(location: restaurant.city),
                        label: {
                            RestaurantView(restaurant: restaurant)
                        }
                    )
                    .simultaneousGesture(TapGesture().onEnded {
                        model.displayingReservationForm = true
                    })
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
