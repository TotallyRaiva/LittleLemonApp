//
//  RestaurantView.swift
//  LittleLemonApp
//
//  Created by Reiwa on 14.05.2025.
//
import SwiftUI

struct RestaurantView: View {
    let restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading) {
            Text(restaurant.city)
                .font(.headline)

            Text(restaurant.neighborhood)
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text(restaurant.phoneNumber)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    RestaurantView(restaurant: Restaurant(
        city: "Chicago",
        neighborhood: "Downtown",
        phoneNumber: "(312) 555-1234"
    ))
}

